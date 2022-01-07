
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vfio_ccw_private {struct subchannel* sch; } ;
struct TYPE_4__ {int actl; } ;
struct TYPE_5__ {TYPE_1__ cmd; } ;
struct TYPE_6__ {TYPE_2__ scsw; } ;
struct subchannel {int lock; TYPE_3__ schib; int schid; int dev; } ;
typedef int ccode ;


 int ENODEV ;
 int SCSW_ACTL_CLEAR_PEND ;
 int VFIO_CCW_HEX_EVENT (int,int*,int) ;
 int VFIO_CCW_TRACE_EVENT (int,char*) ;
 int csch (int ) ;
 char* dev_name (int *) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static int fsm_do_clear(struct vfio_ccw_private *private)
{
 struct subchannel *sch;
 unsigned long flags;
 int ccode;
 int ret;

 sch = private->sch;

 spin_lock_irqsave(sch->lock, flags);

 VFIO_CCW_TRACE_EVENT(2, "clearIO");
 VFIO_CCW_TRACE_EVENT(2, dev_name(&sch->dev));


 ccode = csch(sch->schid);

 VFIO_CCW_HEX_EVENT(2, &ccode, sizeof(ccode));

 switch (ccode) {
 case 0:



  sch->schib.scsw.cmd.actl = SCSW_ACTL_CLEAR_PEND;

  ret = 0;
  break;
 case 3:
  ret = -ENODEV;
  break;
 default:
  ret = ccode;
 }
 spin_unlock_irqrestore(sch->lock, flags);
 return ret;
}
