
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vio_dev {int dev; int irq; } ;
struct scsi_info {int list; int target; int work_task; struct scsi_info* map_buf; int map_ioba; int work_q; int unconfig; int intr_lock; int flags; TYPE_1__* dma_dev; int dev; } ;
struct TYPE_2__ {int dev; } ;


 int CFG_SLEEPING ;
 int DMA_BIDIRECTIONAL ;
 int PAGE_SIZE ;
 int UNCONFIGURING ;
 int destroy_workqueue (int ) ;
 int dev_dbg (int *,char*,int ) ;
 struct scsi_info* dev_get_drvdata (int *) ;
 int dev_name (int *) ;
 int dma_unmap_single (int *,int ,int ,int ) ;
 int free_irq (int ,struct scsi_info*) ;
 int ibmvscsis_destroy_command_q (struct scsi_info*) ;
 int ibmvscsis_dev_lock ;
 int ibmvscsis_free_cmds (struct scsi_info*) ;
 int ibmvscsis_freetimer (struct scsi_info*) ;
 int ibmvscsis_post_disconnect (struct scsi_info*,int ,int ) ;
 int kfree (struct scsi_info*) ;
 int list_del (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int srp_target_free (int *) ;
 int tasklet_kill (int *) ;
 int vio_disable_interrupts (struct vio_dev*) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int ibmvscsis_remove(struct vio_dev *vdev)
{
 struct scsi_info *vscsi = dev_get_drvdata(&vdev->dev);

 dev_dbg(&vscsi->dev, "remove (%s)\n", dev_name(&vscsi->dma_dev->dev));

 spin_lock_bh(&vscsi->intr_lock);
 ibmvscsis_post_disconnect(vscsi, UNCONFIGURING, 0);
 vscsi->flags |= CFG_SLEEPING;
 spin_unlock_bh(&vscsi->intr_lock);
 wait_for_completion(&vscsi->unconfig);

 vio_disable_interrupts(vdev);
 free_irq(vdev->irq, vscsi);
 destroy_workqueue(vscsi->work_q);
 dma_unmap_single(&vdev->dev, vscsi->map_ioba, PAGE_SIZE,
    DMA_BIDIRECTIONAL);
 kfree(vscsi->map_buf);
 tasklet_kill(&vscsi->work_task);
 ibmvscsis_destroy_command_q(vscsi);
 ibmvscsis_freetimer(vscsi);
 ibmvscsis_free_cmds(vscsi);
 srp_target_free(&vscsi->target);
 spin_lock_bh(&ibmvscsis_dev_lock);
 list_del(&vscsi->list);
 spin_unlock_bh(&ibmvscsis_dev_lock);
 kfree(vscsi);

 return 0;
}
