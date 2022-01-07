
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int dummy; } ;
struct pvscsi_ctx {struct scsi_cmnd* cmd; } ;
struct pvscsi_adapter {size_t req_depth; struct pvscsi_ctx* cmd_map; } ;



__attribute__((used)) static struct pvscsi_ctx *
pvscsi_find_context(const struct pvscsi_adapter *adapter, struct scsi_cmnd *cmd)
{
 struct pvscsi_ctx *ctx, *end;

 end = &adapter->cmd_map[adapter->req_depth];
 for (ctx = adapter->cmd_map; ctx < end; ctx++)
  if (ctx->cmd == cmd)
   return ctx;

 return ((void*)0);
}
