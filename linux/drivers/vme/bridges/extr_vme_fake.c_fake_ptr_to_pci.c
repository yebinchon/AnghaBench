
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dma_addr_t ;



__attribute__((used)) static dma_addr_t fake_ptr_to_pci(void *addr)
{
 return (dma_addr_t)(uintptr_t)addr;
}
