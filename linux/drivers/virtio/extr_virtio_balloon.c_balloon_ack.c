
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtqueue {TYPE_1__* vdev; } ;
struct virtio_balloon {int acked; } ;
struct TYPE_2__ {struct virtio_balloon* priv; } ;


 int wake_up (int *) ;

__attribute__((used)) static void balloon_ack(struct virtqueue *vq)
{
 struct virtio_balloon *vb = vq->vdev->priv;

 wake_up(&vb->acked);
}
