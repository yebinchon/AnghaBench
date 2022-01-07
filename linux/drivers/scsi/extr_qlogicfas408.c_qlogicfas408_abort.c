
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int dummy; } ;
struct qlogicfas408_priv {int qabort; } ;


 int SUCCESS ;
 struct qlogicfas408_priv* get_priv_by_cmd (struct scsi_cmnd*) ;
 int ql_zap (struct qlogicfas408_priv*) ;

int qlogicfas408_abort(struct scsi_cmnd *cmd)
{
 struct qlogicfas408_priv *priv = get_priv_by_cmd(cmd);
 priv->qabort = 1;
 ql_zap(priv);
 return SUCCESS;
}
