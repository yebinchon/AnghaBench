
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int result; void (* scsi_done ) (struct scsi_cmnd*) ;} ;
struct qlogicfas408_priv {scalar_t__ qinitid; int * qlcmd; } ;


 int DID_BAD_TARGET ;
 int barrier () ;
 int cpu_relax () ;
 struct qlogicfas408_priv* get_priv_by_cmd (struct scsi_cmnd*) ;
 int ql_icmd (struct scsi_cmnd*) ;
 scalar_t__ scmd_id (struct scsi_cmnd*) ;

__attribute__((used)) static int qlogicfas408_queuecommand_lck(struct scsi_cmnd *cmd,
         void (*done) (struct scsi_cmnd *))
{
 struct qlogicfas408_priv *priv = get_priv_by_cmd(cmd);
 if (scmd_id(cmd) == priv->qinitid) {
  cmd->result = DID_BAD_TARGET << 16;
  done(cmd);
  return 0;
 }

 cmd->scsi_done = done;

 while (priv->qlcmd != ((void*)0)) {
  barrier();
  cpu_relax();
 }
 ql_icmd(cmd);
 return 0;
}
