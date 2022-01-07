
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int* cmnd; int device; } ;


 int MEGASAS_IS_LOGICAL (int ) ;
 int NON_READ_WRITE_LDIO ;
 int NON_READ_WRITE_SYSPDIO ;




 int READ_WRITE_LDIO ;
 int READ_WRITE_SYSPDIO ;





inline int megasas_cmd_type(struct scsi_cmnd *cmd)
{
 int ret;

 switch (cmd->cmnd[0]) {
 case 135:
 case 131:
 case 134:
 case 130:
 case 132:
 case 128:
 case 133:
 case 129:
  ret = (MEGASAS_IS_LOGICAL(cmd->device)) ?
   READ_WRITE_LDIO : READ_WRITE_SYSPDIO;
  break;
 default:
  ret = (MEGASAS_IS_LOGICAL(cmd->device)) ?
   NON_READ_WRITE_LDIO : NON_READ_WRITE_SYSPDIO;
 }
 return ret;
}
