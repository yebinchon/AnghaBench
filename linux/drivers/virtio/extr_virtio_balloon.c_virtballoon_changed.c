
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_device {struct virtio_balloon* priv; } ;
struct virtio_balloon {int stop_update_lock; int update_balloon_size_work; int stop_update; } ;


 int queue_work (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int system_freezable_wq ;
 int virtio_balloon_queue_free_page_work (struct virtio_balloon*) ;

__attribute__((used)) static void virtballoon_changed(struct virtio_device *vdev)
{
 struct virtio_balloon *vb = vdev->priv;
 unsigned long flags;

 spin_lock_irqsave(&vb->stop_update_lock, flags);
 if (!vb->stop_update) {
  queue_work(system_freezable_wq,
      &vb->update_balloon_size_work);
  virtio_balloon_queue_free_page_work(vb);
 }
 spin_unlock_irqrestore(&vb->stop_update_lock, flags);
}
