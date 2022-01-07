
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_ctrl {int state; } ;
 int WARN_ONCE (int,char*,int) ;

__attribute__((used)) static bool nvme_state_terminal(struct nvme_ctrl *ctrl)
{
 switch (ctrl->state) {
 case 129:
 case 130:
 case 128:
 case 133:
  return 0;
 case 131:
 case 132:
  return 1;
 default:
  WARN_ONCE(1, "Unhandled ctrl state:%d", ctrl->state);
  return 1;
 }
}
