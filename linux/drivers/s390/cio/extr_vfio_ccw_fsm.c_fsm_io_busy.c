
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfio_ccw_private {TYPE_1__* io_region; } ;
typedef enum vfio_ccw_event { ____Placeholder_vfio_ccw_event } vfio_ccw_event ;
struct TYPE_2__ {int ret_code; } ;


 int EBUSY ;

__attribute__((used)) static void fsm_io_busy(struct vfio_ccw_private *private,
   enum vfio_ccw_event event)
{
 private->io_region->ret_code = -EBUSY;
}
