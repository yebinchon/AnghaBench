
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int result; int (* scsi_done ) (struct scsi_cmnd*) ;} ;
struct pvscsi_ctx {struct scsi_cmnd* cmd; } ;
struct pvscsi_adapter {unsigned int req_depth; struct pvscsi_ctx* cmd_map; } ;


 int DID_RESET ;
 int KERN_ERR ;
 int pvscsi_release_context (struct pvscsi_adapter*,struct pvscsi_ctx*) ;
 int pvscsi_unmap_buffers (struct pvscsi_adapter*,struct pvscsi_ctx*) ;
 int scmd_printk (int ,struct scsi_cmnd*,char*,struct scsi_cmnd*) ;
 int stub1 (struct scsi_cmnd*) ;

__attribute__((used)) static void pvscsi_reset_all(struct pvscsi_adapter *adapter)
{
 unsigned i;

 for (i = 0; i < adapter->req_depth; i++) {
  struct pvscsi_ctx *ctx = &adapter->cmd_map[i];
  struct scsi_cmnd *cmd = ctx->cmd;
  if (cmd) {
   scmd_printk(KERN_ERR, cmd,
        "Forced reset on cmd %p\n", cmd);
   pvscsi_unmap_buffers(adapter, ctx);
   pvscsi_release_context(adapter, ctx);
   cmd->result = (DID_RESET << 16);
   cmd->scsi_done(cmd);
  }
 }
}
