
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_ring {int enqueue; int enq_seg; } ;
struct seq_file {scalar_t__ private; } ;
typedef int dma_addr_t ;


 int seq_printf (struct seq_file*,char*,int *) ;
 int xhci_trb_virt_to_dma (int ,int ) ;

__attribute__((used)) static int xhci_ring_enqueue_show(struct seq_file *s, void *unused)
{
 dma_addr_t dma;
 struct xhci_ring *ring = *(struct xhci_ring **)s->private;

 dma = xhci_trb_virt_to_dma(ring->enq_seg, ring->enqueue);
 seq_printf(s, "%pad\n", &dma);

 return 0;
}
