
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnic_wq {unsigned int index; struct vnic_dev* vdev; } ;
struct vnic_dev {int dummy; } ;


 int RES_TYPE_WQ ;
 int pr_err (char*,unsigned int) ;
 int svnic_wq_disable (struct vnic_wq*) ;
 int svnic_wq_free (struct vnic_wq*) ;
 int vnic_wq_alloc_bufs (struct vnic_wq*) ;
 int vnic_wq_alloc_ring (struct vnic_dev*,struct vnic_wq*,unsigned int,unsigned int,unsigned int) ;
 int vnic_wq_get_ctrl (struct vnic_dev*,struct vnic_wq*,unsigned int,int ) ;

int svnic_wq_alloc(struct vnic_dev *vdev, struct vnic_wq *wq,
 unsigned int index, unsigned int desc_count, unsigned int desc_size)
{
 int err;

 wq->index = index;
 wq->vdev = vdev;

 err = vnic_wq_get_ctrl(vdev, wq, index, RES_TYPE_WQ);
 if (err) {
  pr_err("Failed to hook WQ[%d] resource\n", index);

  return err;
 }

 svnic_wq_disable(wq);

 err = vnic_wq_alloc_ring(vdev, wq, index, desc_count, desc_size);
 if (err)
  return err;

 err = vnic_wq_alloc_bufs(wq);
 if (err) {
  svnic_wq_free(wq);

  return err;
 }

 return 0;
}
