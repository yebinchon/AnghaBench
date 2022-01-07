
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct hfa384x_metacmd {int cmd; scalar_t__ parm2; scalar_t__ parm1; scalar_t__ parm0; } ;
struct hfa384x {int dummy; } ;


 int HFA384x_CMDCODE_MONITOR ;
 int HFA384x_CMD_AINFO_SET (int ) ;
 int HFA384x_CMD_CMDCODE_SET (int ) ;
 int hfa384x_docmd (struct hfa384x*,struct hfa384x_metacmd*) ;

int hfa384x_cmd_monitor(struct hfa384x *hw, u16 enable)
{
 struct hfa384x_metacmd cmd;

 cmd.cmd = HFA384x_CMD_CMDCODE_SET(HFA384x_CMDCODE_MONITOR) |
     HFA384x_CMD_AINFO_SET(enable);
 cmd.parm0 = 0;
 cmd.parm1 = 0;
 cmd.parm2 = 0;

 return hfa384x_docmd(hw, &cmd);
}
