
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_virtqueue {int used; int avail; int desc; int num; scalar_t__ iotlb; int log_base; } ;


 int vq_access_ok (struct vhost_virtqueue*,int ,int ,int ,int ) ;
 int vq_log_access_ok (struct vhost_virtqueue*,int ) ;

bool vhost_vq_access_ok(struct vhost_virtqueue *vq)
{
 if (!vq_log_access_ok(vq, vq->log_base))
  return 0;


 if (vq->iotlb)
  return 1;

 return vq_access_ok(vq, vq->num, vq->desc, vq->avail, vq->used);
}
