
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_virtqueue {int ** meta_iotlb; } ;


 int VHOST_NUM_ADDRS ;

__attribute__((used)) static void __vhost_vq_meta_reset(struct vhost_virtqueue *vq)
{
 int j;

 for (j = 0; j < VHOST_NUM_ADDRS; j++)
  vq->meta_iotlb[j] = ((void*)0);
}
