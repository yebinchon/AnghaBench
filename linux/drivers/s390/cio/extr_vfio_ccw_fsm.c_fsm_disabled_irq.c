
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_ccw_private {struct subchannel* sch; } ;
struct subchannel {int dummy; } ;
typedef enum vfio_ccw_event { ____Placeholder_vfio_ccw_event } vfio_ccw_event ;


 int cio_disable_subchannel (struct subchannel*) ;

__attribute__((used)) static void fsm_disabled_irq(struct vfio_ccw_private *private,
        enum vfio_ccw_event event)
{
 struct subchannel *sch = private->sch;





 cio_disable_subchannel(sch);
}
