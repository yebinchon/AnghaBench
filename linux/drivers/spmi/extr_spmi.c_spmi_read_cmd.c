
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_2__ {int * type; } ;
struct spmi_controller {int (* read_cmd ) (struct spmi_controller*,int ,int ,int ,int *,size_t) ;TYPE_1__ dev; } ;


 int EINVAL ;
 int spmi_ctrl_type ;
 int stub1 (struct spmi_controller*,int ,int ,int ,int *,size_t) ;
 int trace_spmi_read_begin (int ,int ,int ) ;
 int trace_spmi_read_end (int ,int ,int ,int,size_t,int *) ;

__attribute__((used)) static inline int spmi_read_cmd(struct spmi_controller *ctrl, u8 opcode,
    u8 sid, u16 addr, u8 *buf, size_t len)
{
 int ret;

 if (!ctrl || !ctrl->read_cmd || ctrl->dev.type != &spmi_ctrl_type)
  return -EINVAL;

 trace_spmi_read_begin(opcode, sid, addr);
 ret = ctrl->read_cmd(ctrl, opcode, sid, addr, buf, len);
 trace_spmi_read_end(opcode, sid, addr, ret, len, buf);
 return ret;
}
