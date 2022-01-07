
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfio_ccw_private {TYPE_1__* io_region; int state; } ;
typedef enum vfio_ccw_event { ____Placeholder_vfio_ccw_event } vfio_ccw_event ;
struct TYPE_2__ {int ret_code; } ;


 int EIO ;
 int pr_err (char*,int ) ;

__attribute__((used)) static void fsm_io_error(struct vfio_ccw_private *private,
    enum vfio_ccw_event event)
{
 pr_err("vfio-ccw: FSM: I/O request from state:%d\n", private->state);
 private->io_region->ret_code = -EIO;
}
