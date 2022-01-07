
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct isst_cmd {int cmd; int mbox_cmd_type; int hnode; void* data; void* param; void* cpu; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int hash_add (int ,int *,int) ;
 int isst_hash ;
 struct isst_cmd* kmalloc (int,int ) ;

__attribute__((used)) static int isst_store_new_cmd(int cmd, u32 cpu, int mbox_cmd_type, u32 param,
         u32 data)
{
 struct isst_cmd *sst_cmd;

 sst_cmd = kmalloc(sizeof(*sst_cmd), GFP_KERNEL);
 if (!sst_cmd)
  return -ENOMEM;

 sst_cmd->cpu = cpu;
 sst_cmd->cmd = cmd;
 sst_cmd->mbox_cmd_type = mbox_cmd_type;
 sst_cmd->param = param;
 sst_cmd->data = data;

 hash_add(isst_hash, &sst_cmd->hnode, sst_cmd->cmd);

 return 0;
}
