
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_scsi_cmd {int tvc_completion_list; struct vhost_scsi* tvc_vhost; } ;
struct vhost_scsi {int vs_completion_work; int dev; int vs_completion_list; } ;


 int llist_add (int *,int *) ;
 int vhost_work_queue (int *,int *) ;

__attribute__((used)) static void vhost_scsi_complete_cmd(struct vhost_scsi_cmd *cmd)
{
 struct vhost_scsi *vs = cmd->tvc_vhost;

 llist_add(&cmd->tvc_completion_list, &vs->vs_completion_list);

 vhost_work_queue(&vs->dev, &vs->vs_completion_work);
}
