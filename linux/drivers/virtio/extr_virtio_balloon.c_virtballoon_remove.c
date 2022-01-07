
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtio_device {struct virtio_balloon* priv; } ;
struct TYPE_2__ {scalar_t__ inode; } ;
struct virtio_balloon {int stop_update; TYPE_1__ vb_dev_info; int balloon_wq; int report_free_page_work; int update_balloon_stats_work; int update_balloon_size_work; int stop_update_lock; struct virtio_device* vdev; } ;


 int VIRTIO_BALLOON_F_DEFLATE_ON_OOM ;
 int VIRTIO_BALLOON_F_FREE_PAGE_HINT ;
 int balloon_mnt ;
 int cancel_work_sync (int *) ;
 int destroy_workqueue (int ) ;
 int iput (scalar_t__) ;
 int kern_unmount (int ) ;
 int kfree (struct virtio_balloon*) ;
 int remove_common (struct virtio_balloon*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int virtio_balloon_unregister_shrinker (struct virtio_balloon*) ;
 scalar_t__ virtio_has_feature (struct virtio_device*,int ) ;

__attribute__((used)) static void virtballoon_remove(struct virtio_device *vdev)
{
 struct virtio_balloon *vb = vdev->priv;

 if (virtio_has_feature(vb->vdev, VIRTIO_BALLOON_F_DEFLATE_ON_OOM))
  virtio_balloon_unregister_shrinker(vb);
 spin_lock_irq(&vb->stop_update_lock);
 vb->stop_update = 1;
 spin_unlock_irq(&vb->stop_update_lock);
 cancel_work_sync(&vb->update_balloon_size_work);
 cancel_work_sync(&vb->update_balloon_stats_work);

 if (virtio_has_feature(vdev, VIRTIO_BALLOON_F_FREE_PAGE_HINT)) {
  cancel_work_sync(&vb->report_free_page_work);
  destroy_workqueue(vb->balloon_wq);
 }

 remove_common(vb);






 kfree(vb);
}
