
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnic_wq_copy {int ring; TYPE_1__* ctrl; scalar_t__ to_clean_index; scalar_t__ to_use_index; } ;
struct TYPE_2__ {int error_status; int posted_index; int fetch_index; int enable; } ;


 int BUG_ON (int ) ;
 int ioread32 (int *) ;
 int iowrite32 (int ,int *) ;
 int vnic_dev_clear_desc_ring (int *) ;
 scalar_t__ vnic_wq_copy_desc_in_use (struct vnic_wq_copy*) ;
 int vnic_wq_copy_service (struct vnic_wq_copy*,int,void (*) (struct vnic_wq_copy*,struct fcpio_host_req*)) ;

void vnic_wq_copy_clean(struct vnic_wq_copy *wq,
 void (*q_clean)(struct vnic_wq_copy *wq,
 struct fcpio_host_req *wq_desc))
{
 BUG_ON(ioread32(&wq->ctrl->enable));

 if (vnic_wq_copy_desc_in_use(wq))
  vnic_wq_copy_service(wq, -1, q_clean);

 wq->to_use_index = wq->to_clean_index = 0;

 iowrite32(0, &wq->ctrl->fetch_index);
 iowrite32(0, &wq->ctrl->posted_index);
 iowrite32(0, &wq->ctrl->error_status);

 vnic_dev_clear_desc_ring(&wq->ring);
}
