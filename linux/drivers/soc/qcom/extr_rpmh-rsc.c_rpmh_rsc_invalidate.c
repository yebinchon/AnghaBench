
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsc_drv {int dummy; } ;


 int SLEEP_TCS ;
 int WAKE_TCS ;
 int tcs_invalidate (struct rsc_drv*,int ) ;

int rpmh_rsc_invalidate(struct rsc_drv *drv)
{
 int ret;

 ret = tcs_invalidate(drv, SLEEP_TCS);
 if (!ret)
  ret = tcs_invalidate(drv, WAKE_TCS);

 return ret;
}
