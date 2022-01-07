
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnic_wq {struct vnic_dev* vdev; scalar_t__ index; } ;
struct vnic_dev {int dummy; } ;


 int RES_TYPE_DEVCMD2 ;
 int pr_err (char*) ;
 int svnic_wq_disable (struct vnic_wq*) ;
 int vnic_wq_alloc_ring (struct vnic_dev*,struct vnic_wq*,int ,unsigned int,unsigned int) ;
 int vnic_wq_get_ctrl (struct vnic_dev*,struct vnic_wq*,int ,int ) ;

int vnic_wq_devcmd2_alloc(struct vnic_dev *vdev, struct vnic_wq *wq,
 unsigned int desc_count, unsigned int desc_size)
{
 int err;

 wq->index = 0;
 wq->vdev = vdev;

 err = vnic_wq_get_ctrl(vdev, wq, 0, RES_TYPE_DEVCMD2);
 if (err) {
  pr_err("Failed to get devcmd2 resource\n");

  return err;
 }

 svnic_wq_disable(wq);

 err = vnic_wq_alloc_ring(vdev, wq, 0, desc_count, desc_size);
 if (err)
  return err;

 return 0;
}
