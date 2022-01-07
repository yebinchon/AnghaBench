
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_cmd {int se_cmd_flags; } ;
typedef int sense_reason_t ;


 int SCF_BIDI ;
 int TCM_UNSUPPORTED_SCSI_OPCODE ;
 int passthrough_parse_cdb (struct se_cmd*,int ) ;
 int pscsi_execute_cmd ;

__attribute__((used)) static sense_reason_t
pscsi_parse_cdb(struct se_cmd *cmd)
{
 if (cmd->se_cmd_flags & SCF_BIDI)
  return TCM_UNSUPPORTED_SCSI_OPCODE;

 return passthrough_parse_cdb(cmd, pscsi_execute_cmd);
}
