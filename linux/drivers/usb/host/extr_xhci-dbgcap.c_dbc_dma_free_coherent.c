
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xhci_hcd {int dummy; } ;
typedef int dma_addr_t ;
struct TYPE_3__ {int sysdev; } ;
struct TYPE_4__ {TYPE_1__ self; } ;


 int dma_free_coherent (int ,size_t,void*,int ) ;
 TYPE_2__* xhci_to_hcd (struct xhci_hcd*) ;

__attribute__((used)) static inline void
dbc_dma_free_coherent(struct xhci_hcd *xhci, size_t size,
        void *cpu_addr, dma_addr_t dma_handle)
{
 if (cpu_addr)
  dma_free_coherent(xhci_to_hcd(xhci)->self.sysdev,
      size, cpu_addr, dma_handle);
}
