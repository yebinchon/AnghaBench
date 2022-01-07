
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnic_intr {unsigned int index; int ctrl; struct vnic_dev* vdev; } ;
struct vnic_dev {int dummy; } ;


 int EINVAL ;
 int RES_TYPE_INTR_CTRL ;
 int pr_err (char*,unsigned int) ;
 int svnic_dev_get_res (struct vnic_dev*,int ,unsigned int) ;

int svnic_intr_alloc(struct vnic_dev *vdev, struct vnic_intr *intr,
 unsigned int index)
{
 intr->index = index;
 intr->vdev = vdev;

 intr->ctrl = svnic_dev_get_res(vdev, RES_TYPE_INTR_CTRL, index);
 if (!intr->ctrl) {
  pr_err("Failed to hook INTR[%d].ctrl resource\n",
   index);
  return -EINVAL;
 }

 return 0;
}
