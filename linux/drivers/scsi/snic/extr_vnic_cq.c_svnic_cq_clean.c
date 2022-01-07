
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnic_cq {int ring; TYPE_1__* ctrl; scalar_t__ last_color; scalar_t__ to_clean; } ;
struct TYPE_2__ {int cq_tail_color; int cq_tail; int cq_head; } ;


 int iowrite32 (int,int *) ;
 int svnic_dev_clear_desc_ring (int *) ;

void svnic_cq_clean(struct vnic_cq *cq)
{
 cq->to_clean = 0;
 cq->last_color = 0;

 iowrite32(0, &cq->ctrl->cq_head);
 iowrite32(0, &cq->ctrl->cq_tail);
 iowrite32(1, &cq->ctrl->cq_tail_color);

 svnic_dev_clear_desc_ring(&cq->ring);
}
