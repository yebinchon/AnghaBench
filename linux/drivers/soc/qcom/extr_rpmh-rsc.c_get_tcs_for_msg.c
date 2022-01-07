
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcs_request {int state; } ;
struct tcs_group {scalar_t__ num_tcs; } ;
struct rsc_drv {int dummy; } ;


 int ACTIVE_TCS ;
 int EINVAL ;
 struct tcs_group* ERR_PTR (int) ;



 int SLEEP_TCS ;
 int WAKE_TCS ;
 struct tcs_group* get_tcs_of_type (struct rsc_drv*,int) ;
 int rpmh_rsc_invalidate (struct rsc_drv*) ;

__attribute__((used)) static struct tcs_group *get_tcs_for_msg(struct rsc_drv *drv,
      const struct tcs_request *msg)
{
 int type, ret;
 struct tcs_group *tcs;

 switch (msg->state) {
 case 130:
  type = ACTIVE_TCS;
  break;
 case 128:
  type = WAKE_TCS;
  break;
 case 129:
  type = SLEEP_TCS;
  break;
 default:
  return ERR_PTR(-EINVAL);
 }
 tcs = get_tcs_of_type(drv, type);
 if (msg->state == 130 && !tcs->num_tcs) {
  tcs = get_tcs_of_type(drv, WAKE_TCS);
  if (tcs->num_tcs) {
   ret = rpmh_rsc_invalidate(drv);
   if (ret)
    return ERR_PTR(ret);
  }
 }

 return tcs;
}
