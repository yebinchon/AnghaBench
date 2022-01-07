
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_info {int free_cmd; scalar_t__ cmd_pool; } ;
struct ibmvscsis_cmd {int list; int work; struct scsi_info* adapter; int * abort_cmd; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int ibmvscsis_scheduler ;
 scalar_t__ kcalloc (int,int,int ) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static int ibmvscsis_alloc_cmds(struct scsi_info *vscsi, int num)
{
 struct ibmvscsis_cmd *cmd;
 int i;

 INIT_LIST_HEAD(&vscsi->free_cmd);
 vscsi->cmd_pool = kcalloc(num, sizeof(struct ibmvscsis_cmd),
      GFP_KERNEL);
 if (!vscsi->cmd_pool)
  return -ENOMEM;

 for (i = 0, cmd = (struct ibmvscsis_cmd *)vscsi->cmd_pool; i < num;
      i++, cmd++) {
  cmd->abort_cmd = ((void*)0);
  cmd->adapter = vscsi;
  INIT_WORK(&cmd->work, ibmvscsis_scheduler);
  list_add_tail(&cmd->list, &vscsi->free_cmd);
 }

 return 0;
}
