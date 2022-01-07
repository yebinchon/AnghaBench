
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {unsigned int desc_count; scalar_t__ base_addr; } ;
struct vnic_cq {TYPE_2__* ctrl; TYPE_1__ ring; } ;
struct TYPE_4__ {int cq_message_addr; int interrupt_offset; int cq_message_enable; int cq_entry_enable; int interrupt_enable; int cq_tail_color; int cq_tail; int cq_head; int color_enable; int flow_control_enable; int ring_size; int ring_base; } ;


 int VNIC_PADDR_TARGET ;
 int iowrite32 (unsigned int,int *) ;
 int writeq (int,int *) ;

void svnic_cq_init(struct vnic_cq *cq, unsigned int flow_control_enable,
 unsigned int color_enable, unsigned int cq_head, unsigned int cq_tail,
 unsigned int cq_tail_color, unsigned int interrupt_enable,
 unsigned int cq_entry_enable, unsigned int cq_message_enable,
 unsigned int interrupt_offset, u64 cq_message_addr)
{
 u64 paddr;

 paddr = (u64)cq->ring.base_addr | VNIC_PADDR_TARGET;
 writeq(paddr, &cq->ctrl->ring_base);
 iowrite32(cq->ring.desc_count, &cq->ctrl->ring_size);
 iowrite32(flow_control_enable, &cq->ctrl->flow_control_enable);
 iowrite32(color_enable, &cq->ctrl->color_enable);
 iowrite32(cq_head, &cq->ctrl->cq_head);
 iowrite32(cq_tail, &cq->ctrl->cq_tail);
 iowrite32(cq_tail_color, &cq->ctrl->cq_tail_color);
 iowrite32(interrupt_enable, &cq->ctrl->interrupt_enable);
 iowrite32(cq_entry_enable, &cq->ctrl->cq_entry_enable);
 iowrite32(cq_message_enable, &cq->ctrl->cq_message_enable);
 iowrite32(interrupt_offset, &cq->ctrl->interrupt_offset);
 writeq(cq_message_addr, &cq->ctrl->cq_message_addr);
}
