
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_cmd {unsigned char* t_task_cdb; } ;
typedef int sense_reason_t ;


 int SAM_STAT_GOOD ;
 int TCM_INVALID_CDB_FIELD ;
 int target_complete_cmd (struct se_cmd*,int ) ;

__attribute__((used)) static sense_reason_t
sbc_emulate_startstop(struct se_cmd *cmd)
{
 unsigned char *cdb = cmd->t_task_cdb;






 if (!(cdb[1] & 1) || cdb[2] || cdb[3])
  return TCM_INVALID_CDB_FIELD;





 if (cdb[4] >> 4 & 0xf)
  return TCM_INVALID_CDB_FIELD;






 if (!(cdb[4] & 1) || (cdb[4] & 2) || (cdb[4] & 4))
  return TCM_INVALID_CDB_FIELD;

 target_complete_cmd(cmd, SAM_STAT_GOOD);
 return 0;
}
