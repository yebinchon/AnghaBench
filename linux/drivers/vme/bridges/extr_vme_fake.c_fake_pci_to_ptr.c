
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ dma_addr_t ;



__attribute__((used)) static void *fake_pci_to_ptr(dma_addr_t addr)
{
 return (void *)(uintptr_t)addr;
}
