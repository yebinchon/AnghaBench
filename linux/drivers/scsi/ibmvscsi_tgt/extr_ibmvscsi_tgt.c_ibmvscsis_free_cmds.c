
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_info {int free_cmd; int * cmd_pool; } ;


 int INIT_LIST_HEAD (int *) ;
 int kfree (int *) ;

__attribute__((used)) static void ibmvscsis_free_cmds(struct scsi_info *vscsi)
{
 kfree(vscsi->cmd_pool);
 vscsi->cmd_pool = ((void*)0);
 INIT_LIST_HEAD(&vscsi->free_cmd);
}
