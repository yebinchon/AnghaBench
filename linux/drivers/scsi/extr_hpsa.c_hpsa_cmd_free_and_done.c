
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int (* scsi_done ) (struct scsi_cmnd*) ;} ;
struct ctlr_info {int dummy; } ;
struct CommandList {int dummy; } ;


 int hpsa_cmd_resolve_and_free (struct ctlr_info*,struct CommandList*) ;
 int stub1 (struct scsi_cmnd*) ;

__attribute__((used)) static void hpsa_cmd_free_and_done(struct ctlr_info *h,
  struct CommandList *c, struct scsi_cmnd *cmd)
{
 hpsa_cmd_resolve_and_free(h, c);
 if (cmd && cmd->scsi_done)
  cmd->scsi_done(cmd);
}
