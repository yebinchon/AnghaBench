
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnic_wq {int ctrl; } ;
struct vnic_dev {int dummy; } ;
typedef enum vnic_res_type { ____Placeholder_vnic_res_type } vnic_res_type ;


 int EINVAL ;
 int vnic_dev_get_res (struct vnic_dev*,int,unsigned int) ;

int vnic_wq_get_ctrl(struct vnic_dev *vdev, struct vnic_wq *wq,
  unsigned int index, enum vnic_res_type res_type)
{
 wq->ctrl = vnic_dev_get_res(vdev, res_type, index);

 if (!wq->ctrl)
  return -EINVAL;

 return 0;
}
