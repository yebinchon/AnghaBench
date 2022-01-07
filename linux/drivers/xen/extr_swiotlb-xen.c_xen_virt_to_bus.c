
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dma_addr_t ;


 int virt_to_phys (void*) ;
 int xen_phys_to_bus (int ) ;

__attribute__((used)) static inline dma_addr_t xen_virt_to_bus(void *address)
{
 return xen_phys_to_bus(virt_to_phys(address));
}
