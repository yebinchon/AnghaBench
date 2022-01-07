
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * field; } ;
union xhci_trb {TYPE_1__ generic; } ;
struct xhci_segment {scalar_t__ dma; union xhci_trb* trbs; } ;
struct seq_file {int dummy; } ;
typedef scalar_t__ dma_addr_t ;


 int TRBS_PER_SEGMENT ;
 int le32_to_cpu (int ) ;
 int seq_printf (struct seq_file*,char*,scalar_t__*,int ) ;
 int xhci_decode_trb (int ,int ,int ,int ) ;

__attribute__((used)) static void xhci_ring_dump_segment(struct seq_file *s,
       struct xhci_segment *seg)
{
 int i;
 dma_addr_t dma;
 union xhci_trb *trb;

 for (i = 0; i < TRBS_PER_SEGMENT; i++) {
  trb = &seg->trbs[i];
  dma = seg->dma + i * sizeof(*trb);
  seq_printf(s, "%pad: %s\n", &dma,
      xhci_decode_trb(le32_to_cpu(trb->generic.field[0]),
        le32_to_cpu(trb->generic.field[1]),
        le32_to_cpu(trb->generic.field[2]),
        le32_to_cpu(trb->generic.field[3])));
 }
}
