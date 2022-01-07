
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtqueue {TYPE_1__* vdev; } ;
struct virtio_balloon {int stop_update_lock; int update_balloon_stats_work; int stop_update; } ;
struct TYPE_2__ {struct virtio_balloon* priv; } ;


 int queue_work (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int system_freezable_wq ;

__attribute__((used)) static void stats_request(struct virtqueue *vq)
{
 struct virtio_balloon *vb = vq->vdev->priv;

 spin_lock(&vb->stop_update_lock);
 if (!vb->stop_update)
  queue_work(system_freezable_wq, &vb->update_balloon_stats_work);
 spin_unlock(&vb->stop_update_lock);
}
