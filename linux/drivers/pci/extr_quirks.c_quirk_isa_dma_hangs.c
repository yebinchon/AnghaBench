
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int isa_dma_bridge_buggy ;
 int pci_info (struct pci_dev*,char*) ;

__attribute__((used)) static void quirk_isa_dma_hangs(struct pci_dev *dev)
{
 if (!isa_dma_bridge_buggy) {
  isa_dma_bridge_buggy = 1;
  pci_info(dev, "Activating ISA DMA hang workarounds\n");
 }
}
