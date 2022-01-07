
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct controller {int dummy; } ;


 int CMD_STATUS ;
 int INVALID_CMD ;
 int INVALID_SPEED_MODE ;
 int SWITCH_OPEN ;
 int ctrl_err (struct controller*,char*) ;
 int shpc_readw (struct controller*,int ) ;

__attribute__((used)) static int hpc_check_cmd_status(struct controller *ctrl)
{
 int retval = 0;
 u16 cmd_status = shpc_readw(ctrl, CMD_STATUS) & 0x000F;

 switch (cmd_status >> 1) {
 case 0:
  retval = 0;
  break;
 case 1:
  retval = SWITCH_OPEN;
  ctrl_err(ctrl, "Switch opened!\n");
  break;
 case 2:
  retval = INVALID_CMD;
  ctrl_err(ctrl, "Invalid HPC command!\n");
  break;
 case 4:
  retval = INVALID_SPEED_MODE;
  ctrl_err(ctrl, "Invalid bus speed/mode!\n");
  break;
 default:
  retval = cmd_status;
 }

 return retval;
}
