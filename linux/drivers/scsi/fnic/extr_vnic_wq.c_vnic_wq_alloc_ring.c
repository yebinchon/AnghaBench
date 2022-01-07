
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnic_wq {int ring; } ;
struct vnic_dev {int dummy; } ;


 int vnic_dev_alloc_desc_ring (struct vnic_dev*,int *,unsigned int,unsigned int) ;

int vnic_wq_alloc_ring(struct vnic_dev *vdev, struct vnic_wq *wq,
  unsigned int desc_count, unsigned int desc_size)
{
 return vnic_dev_alloc_desc_ring(vdev, &wq->ring, desc_count, desc_size);
}
