
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcs_request {scalar_t__ num_cmds; TYPE_1__* cmds; } ;
struct rsc_drv {int dummy; } ;
struct TYPE_2__ {int addr; } ;


 int EBUSY ;
 int EINVAL ;
 scalar_t__ MAX_RPMH_PAYLOAD ;
 int WARN_ON (int) ;
 int pr_info_ratelimited (char*,int ) ;
 int tcs_write (struct rsc_drv*,struct tcs_request const*) ;
 int udelay (int) ;

int rpmh_rsc_send_data(struct rsc_drv *drv, const struct tcs_request *msg)
{
 int ret;

 if (!msg || !msg->cmds || !msg->num_cmds ||
     msg->num_cmds > MAX_RPMH_PAYLOAD) {
  WARN_ON(1);
  return -EINVAL;
 }

 do {
  ret = tcs_write(drv, msg);
  if (ret == -EBUSY) {
   pr_info_ratelimited("TCS Busy, retrying RPMH message send: addr=%#x\n",
         msg->cmds[0].addr);
   udelay(10);
  }
 } while (ret == -EBUSY);

 return ret;
}
