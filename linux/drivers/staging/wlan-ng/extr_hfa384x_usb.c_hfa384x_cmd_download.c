
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u16 ;
struct hfa384x_metacmd {int cmd; void* parm2; void* parm1; void* parm0; } ;
struct hfa384x {int dummy; } ;


 int HFA384x_CMDCODE_DOWNLD ;
 int HFA384x_CMD_CMDCODE_SET (int ) ;
 int HFA384x_CMD_PROGMODE_SET (void*) ;
 int hfa384x_docmd (struct hfa384x*,struct hfa384x_metacmd*) ;
 int pr_debug (char*,void*,void*,void*,void*) ;

int hfa384x_cmd_download(struct hfa384x *hw, u16 mode, u16 lowaddr,
    u16 highaddr, u16 codelen)
{
 struct hfa384x_metacmd cmd;

 pr_debug("mode=%d, lowaddr=0x%04x, highaddr=0x%04x, codelen=%d\n",
   mode, lowaddr, highaddr, codelen);

 cmd.cmd = (HFA384x_CMD_CMDCODE_SET(HFA384x_CMDCODE_DOWNLD) |
     HFA384x_CMD_PROGMODE_SET(mode));

 cmd.parm0 = lowaddr;
 cmd.parm1 = highaddr;
 cmd.parm2 = codelen;

 return hfa384x_docmd(hw, &cmd);
}
