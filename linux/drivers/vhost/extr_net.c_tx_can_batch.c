
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_virtqueue {int dev; } ;


 size_t VHOST_NET_WEIGHT ;
 int vhost_vq_avail_empty (int ,struct vhost_virtqueue*) ;

__attribute__((used)) static bool tx_can_batch(struct vhost_virtqueue *vq, size_t total_len)
{
 return total_len < VHOST_NET_WEIGHT &&
        !vhost_vq_avail_empty(vq->dev, vq);
}
