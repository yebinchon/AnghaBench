
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int lpm; } ;
union orb {TYPE_4__ cmd; } ;
typedef int u32 ;
struct vfio_ccw_private {int state; int cp; struct subchannel* sch; } ;
struct TYPE_5__ {int actl; } ;
struct TYPE_6__ {TYPE_1__ cmd; } ;
struct TYPE_7__ {TYPE_2__ scsw; } ;
struct subchannel {int lock; int lpm; TYPE_3__ schib; int schid; int dev; } ;
typedef int ccode ;
typedef scalar_t__ addr_t ;
typedef int __u8 ;


 int EACCES ;
 int EBUSY ;
 int EIO ;
 int ENODEV ;
 int SCSW_ACTL_START_PEND ;
 int VFIO_CCW_HEX_EVENT (int,int*,int) ;
 int VFIO_CCW_STATE_CP_PENDING ;
 int VFIO_CCW_TRACE_EVENT (int,char*) ;
 int cio_update_schib (struct subchannel*) ;
 union orb* cp_get_orb (int *,int ,int ) ;
 char* dev_name (int *) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int ssch (int ,union orb*) ;

__attribute__((used)) static int fsm_io_helper(struct vfio_ccw_private *private)
{
 struct subchannel *sch;
 union orb *orb;
 int ccode;
 __u8 lpm;
 unsigned long flags;
 int ret;

 sch = private->sch;

 spin_lock_irqsave(sch->lock, flags);

 orb = cp_get_orb(&private->cp, (u32)(addr_t)sch, sch->lpm);
 if (!orb) {
  ret = -EIO;
  goto out;
 }

 VFIO_CCW_TRACE_EVENT(5, "stIO");
 VFIO_CCW_TRACE_EVENT(5, dev_name(&sch->dev));


 ccode = ssch(sch->schid, orb);

 VFIO_CCW_HEX_EVENT(5, &ccode, sizeof(ccode));

 switch (ccode) {
 case 0:



  sch->schib.scsw.cmd.actl |= SCSW_ACTL_START_PEND;
  ret = 0;
  private->state = VFIO_CCW_STATE_CP_PENDING;
  break;
 case 1:
 case 2:
  ret = -EBUSY;
  break;
 case 3:
 {
  lpm = orb->cmd.lpm;
  if (lpm != 0)
   sch->lpm &= ~lpm;
  else
   sch->lpm = 0;

  if (cio_update_schib(sch))
   ret = -ENODEV;
  else
   ret = sch->lpm ? -EACCES : -ENODEV;
  break;
 }
 default:
  ret = ccode;
 }
out:
 spin_unlock_irqrestore(sch->lock, flags);
 return ret;
}
