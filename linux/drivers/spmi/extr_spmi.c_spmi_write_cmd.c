
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_2__ {int * type; } ;
struct spmi_controller {int (* write_cmd ) (struct spmi_controller*,int ,int ,int ,int const*,size_t) ;TYPE_1__ dev; } ;


 int EINVAL ;
 int spmi_ctrl_type ;
 int stub1 (struct spmi_controller*,int ,int ,int ,int const*,size_t) ;
 int trace_spmi_write_begin (int ,int ,int ,size_t,int const*) ;
 int trace_spmi_write_end (int ,int ,int ,int) ;

__attribute__((used)) static inline int spmi_write_cmd(struct spmi_controller *ctrl, u8 opcode,
     u8 sid, u16 addr, const u8 *buf, size_t len)
{
 int ret;

 if (!ctrl || !ctrl->write_cmd || ctrl->dev.type != &spmi_ctrl_type)
  return -EINVAL;

 trace_spmi_write_begin(opcode, sid, addr, len, buf);
 ret = ctrl->write_cmd(ctrl, opcode, sid, addr, buf, len);
 trace_spmi_write_end(opcode, sid, addr, ret);
 return ret;
}
