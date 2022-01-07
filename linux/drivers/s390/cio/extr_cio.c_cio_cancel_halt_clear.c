
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ena; } ;
struct TYPE_4__ {int scsw; TYPE_1__ pmcw; } ;
struct subchannel {TYPE_2__ schib; } ;


 int EBUSY ;
 int EINVAL ;
 int EIO ;
 int ENODEV ;
 int SCSW_ACTL_CLEAR_PEND ;
 int SCSW_ACTL_HALT_PEND ;
 int cio_cancel (struct subchannel*) ;
 int cio_clear (struct subchannel*) ;
 int cio_halt (struct subchannel*) ;
 scalar_t__ cio_update_schib (struct subchannel*) ;
 int scsw_actl (int *) ;
 int scsw_is_tm (int *) ;

int cio_cancel_halt_clear(struct subchannel *sch, int *iretry)
{
 int ret;

 if (cio_update_schib(sch))
  return -ENODEV;
 if (!sch->schib.pmcw.ena)

  return 0;

 if (!(scsw_actl(&sch->schib.scsw) & SCSW_ACTL_HALT_PEND) &&
     !(scsw_actl(&sch->schib.scsw) & SCSW_ACTL_CLEAR_PEND)) {
  if (!scsw_is_tm(&sch->schib.scsw)) {
   ret = cio_cancel(sch);
   if (ret != -EINVAL)
    return ret;
  }




  *iretry = 3;
 }

 if (!(scsw_actl(&sch->schib.scsw) & SCSW_ACTL_CLEAR_PEND)) {
  if (*iretry) {
   *iretry -= 1;
   ret = cio_halt(sch);
   if (ret != -EBUSY)
    return (ret == 0) ? -EBUSY : ret;
  }

  *iretry = 255;
 }

 if (*iretry) {
  *iretry -= 1;
  ret = cio_clear(sch);
  return (ret == 0) ? -EBUSY : ret;
 }

 return -EIO;
}
