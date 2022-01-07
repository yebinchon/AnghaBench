
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {unsigned char* cmnd; TYPE_1__* device; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 int CMD_MODE_UNKNOWN ;
 int CMD_SURELY_BLOCK_MODE ;
 int CMD_SURELY_BYTE_MODE ;
 unsigned char READ_10 ;
 unsigned char READ_6 ;
 unsigned char READ_BUFFER ;
 unsigned char READ_DEFECT_DATA ;
 unsigned char READ_LONG ;
 unsigned char READ_REVERSE ;
 unsigned char RECOVER_BUFFERED_DATA ;
 scalar_t__ TYPE_TAPE ;

__attribute__((used)) static int falcon_classify_cmd(struct scsi_cmnd *cmd)
{
 unsigned char opcode = cmd->cmnd[0];

 if (opcode == READ_DEFECT_DATA || opcode == READ_LONG ||
     opcode == READ_BUFFER)
  return CMD_SURELY_BYTE_MODE;
 else if (opcode == READ_6 || opcode == READ_10 ||
   opcode == 0xa8 || opcode == READ_REVERSE ||
   opcode == RECOVER_BUFFERED_DATA) {



  if (cmd->device->type == TYPE_TAPE && !(cmd->cmnd[1] & 1))
   return CMD_SURELY_BYTE_MODE;
  else
   return CMD_SURELY_BLOCK_MODE;
 } else
  return CMD_MODE_UNKNOWN;
}
