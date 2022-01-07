
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct pvscsi_ctx {int dummy; } ;
struct pvscsi_adapter {struct pvscsi_ctx* cmd_map; } ;



__attribute__((used)) static struct pvscsi_ctx *
pvscsi_get_context(const struct pvscsi_adapter *adapter, u64 context)
{
 return &adapter->cmd_map[context - 1];
}
