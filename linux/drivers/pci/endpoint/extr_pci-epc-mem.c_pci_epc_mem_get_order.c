
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_epc_mem {int page_size; } ;


 int fls (size_t) ;
 int fls64 (size_t) ;
 unsigned int ilog2 (int ) ;

__attribute__((used)) static int pci_epc_mem_get_order(struct pci_epc_mem *mem, size_t size)
{
 int order;
 unsigned int page_shift = ilog2(mem->page_size);

 size--;
 size >>= page_shift;



 order = fls64(size);

 return order;
}
