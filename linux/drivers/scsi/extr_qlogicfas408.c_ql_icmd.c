
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {unsigned int cmd_len; int* cmnd; } ;
struct qlogicfas408_priv {int qbase; int int_type; int qinitid; struct scsi_cmnd* qlcmd; scalar_t__ qabort; } ;


 int REG0 ;
 int REG1 ;
 struct qlogicfas408_priv* get_priv_by_cmd (struct scsi_cmnd*) ;
 int inb (int) ;
 int outb (int,int) ;
 int qlcfg5 ;
 int qlcfg6 ;
 int qlcfg7 ;
 int qlcfg8 ;
 int qlcfg9 ;
 int qlcfgc ;
 int scmd_id (struct scsi_cmnd*) ;

__attribute__((used)) static void ql_icmd(struct scsi_cmnd *cmd)
{
 struct qlogicfas408_priv *priv = get_priv_by_cmd(cmd);
 int qbase = priv->qbase;
 int int_type = priv->int_type;
 unsigned int i;

 priv->qabort = 0;

 REG0;


 inb(qbase + 5);
 if (inb(qbase + 5))
  outb(2, qbase + 3);
 else if (inb(qbase + 7) & 0x1f)
  outb(1, qbase + 3);
 while (inb(qbase + 5));
 REG1;
 outb(1, qbase + 8);
 outb(0, qbase + 0xb);
 inb(qbase + 8);
 REG0;
 outb(0x40, qbase + 0xb);


 outb(qlcfgc, qbase + 0xc);

 outb(0x40 | qlcfg8 | priv->qinitid, qbase + 8);
 outb(qlcfg7, qbase + 7);
 outb(qlcfg6, qbase + 6);
 outb(qlcfg5, qbase + 5);
 outb(qlcfg9 & 7, qbase + 9);

 outb(scmd_id(cmd), qbase + 4);

 for (i = 0; i < cmd->cmd_len; i++)
  outb(cmd->cmnd[i], qbase + 2);

 priv->qlcmd = cmd;
 outb(0x41, qbase + 3);
}
