
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int * type; } ;
struct spmi_controller {int (* cmd ) (struct spmi_controller*,int ,int ) ;TYPE_1__ dev; } ;


 int EINVAL ;
 int spmi_ctrl_type ;
 int stub1 (struct spmi_controller*,int ,int ) ;
 int trace_spmi_cmd (int ,int ,int) ;

__attribute__((used)) static inline int
spmi_cmd(struct spmi_controller *ctrl, u8 opcode, u8 sid)
{
 int ret;

 if (!ctrl || !ctrl->cmd || ctrl->dev.type != &spmi_ctrl_type)
  return -EINVAL;

 ret = ctrl->cmd(ctrl, opcode, sid);
 trace_spmi_cmd(opcode, sid, ret);
 return ret;
}
