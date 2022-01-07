
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_ccw_private {int state; struct ccw_cmd_region* cmd_region; } ;
struct ccw_cmd_region {scalar_t__ command; int ret_code; } ;
typedef enum vfio_ccw_event { ____Placeholder_vfio_ccw_event } vfio_ccw_event ;


 int EIO ;
 scalar_t__ VFIO_CCW_ASYNC_CMD_CSCH ;
 scalar_t__ VFIO_CCW_ASYNC_CMD_HSCH ;
 int pr_err (char*,char*,int ) ;

__attribute__((used)) static void fsm_async_error(struct vfio_ccw_private *private,
       enum vfio_ccw_event event)
{
 struct ccw_cmd_region *cmd_region = private->cmd_region;

 pr_err("vfio-ccw: FSM: %s request from state:%d\n",
        cmd_region->command == VFIO_CCW_ASYNC_CMD_HSCH ? "halt" :
        cmd_region->command == VFIO_CCW_ASYNC_CMD_CSCH ? "clear" :
        "<unknown>", private->state);
 cmd_region->ret_code = -EIO;
}
