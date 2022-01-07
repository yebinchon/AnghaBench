
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int destroy_workqueue (int ) ;
 int target_unregister_template (int *) ;
 int vhost_scsi_deregister () ;
 int vhost_scsi_ops ;
 int vhost_scsi_workqueue ;

__attribute__((used)) static void vhost_scsi_exit(void)
{
 target_unregister_template(&vhost_scsi_ops);
 vhost_scsi_deregister();
 destroy_workqueue(vhost_scsi_workqueue);
}
