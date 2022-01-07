
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vnic_wq_buf {int sop; unsigned int len; int index; struct vnic_wq_buf* next; int dma_addr; void* os_buf; } ;
struct TYPE_4__ {int desc_avail; } ;
struct vnic_wq {TYPE_2__ ring; struct vnic_wq_buf* to_use; TYPE_1__* ctrl; } ;
typedef int dma_addr_t ;
struct TYPE_3__ {int posted_index; } ;


 int iowrite32 (int ,int *) ;
 int wmb () ;

__attribute__((used)) static inline void svnic_wq_post(struct vnic_wq *wq,
 void *os_buf, dma_addr_t dma_addr,
 unsigned int len, int sop, int eop)
{
 struct vnic_wq_buf *buf = wq->to_use;

 buf->sop = sop;
 buf->os_buf = eop ? os_buf : ((void*)0);
 buf->dma_addr = dma_addr;
 buf->len = len;

 buf = buf->next;
 if (eop) {





  wmb();
  iowrite32(buf->index, &wq->ctrl->posted_index);
 }
 wq->to_use = buf;

 wq->ring.desc_avail--;
}
