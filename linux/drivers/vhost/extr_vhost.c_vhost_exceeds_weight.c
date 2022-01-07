
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_virtqueue {int poll; struct vhost_dev* dev; } ;
struct vhost_dev {int byte_weight; int weight; } ;


 int vhost_poll_queue (int *) ;

bool vhost_exceeds_weight(struct vhost_virtqueue *vq,
     int pkts, int total_len)
{
 struct vhost_dev *dev = vq->dev;

 if ((dev->byte_weight && total_len >= dev->byte_weight) ||
     pkts >= dev->weight) {
  vhost_poll_queue(&vq->poll);
  return 1;
 }

 return 0;
}
