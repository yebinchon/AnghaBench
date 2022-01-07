
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_ccw_private {struct ccw_cmd_region* cmd_region; } ;
struct ccw_cmd_region {int command; int ret_code; } ;
typedef enum vfio_ccw_event { ____Placeholder_vfio_ccw_event } vfio_ccw_event ;


 int EINVAL ;


 int fsm_do_clear (struct vfio_ccw_private*) ;
 int fsm_do_halt (struct vfio_ccw_private*) ;

__attribute__((used)) static void fsm_async_request(struct vfio_ccw_private *private,
         enum vfio_ccw_event event)
{
 struct ccw_cmd_region *cmd_region = private->cmd_region;

 switch (cmd_region->command) {
 case 128:
  cmd_region->ret_code = fsm_do_halt(private);
  break;
 case 129:
  cmd_region->ret_code = fsm_do_clear(private);
  break;
 default:

  cmd_region->ret_code = -EINVAL;
 }
}
