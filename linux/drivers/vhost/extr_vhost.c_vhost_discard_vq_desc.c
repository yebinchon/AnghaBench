
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_virtqueue {int last_avail_idx; } ;



void vhost_discard_vq_desc(struct vhost_virtqueue *vq, int n)
{
 vq->last_avail_idx -= n;
}
