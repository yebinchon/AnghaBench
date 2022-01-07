
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ehci_hcd {int periodic_size; int * pshadow; int * periodic; int periodic_dma; int * sitd_pool; int * itd_pool; int * qh_pool; int * qtd_pool; int * dummy; int * async; } ;
struct TYPE_3__ {int sysdev; } ;
struct TYPE_4__ {TYPE_1__ self; } ;


 int dma_free_coherent (int ,int,int *,int ) ;
 int dma_pool_destroy (int *) ;
 TYPE_2__* ehci_to_hcd (struct ehci_hcd*) ;
 int kfree (int *) ;
 int qh_destroy (struct ehci_hcd*,int *) ;

__attribute__((used)) static void ehci_mem_cleanup (struct ehci_hcd *ehci)
{
 if (ehci->async)
  qh_destroy(ehci, ehci->async);
 ehci->async = ((void*)0);

 if (ehci->dummy)
  qh_destroy(ehci, ehci->dummy);
 ehci->dummy = ((void*)0);


 dma_pool_destroy(ehci->qtd_pool);
 ehci->qtd_pool = ((void*)0);
 dma_pool_destroy(ehci->qh_pool);
 ehci->qh_pool = ((void*)0);
 dma_pool_destroy(ehci->itd_pool);
 ehci->itd_pool = ((void*)0);
 dma_pool_destroy(ehci->sitd_pool);
 ehci->sitd_pool = ((void*)0);

 if (ehci->periodic)
  dma_free_coherent(ehci_to_hcd(ehci)->self.sysdev,
   ehci->periodic_size * sizeof (u32),
   ehci->periodic, ehci->periodic_dma);
 ehci->periodic = ((void*)0);


 kfree(ehci->pshadow);
 ehci->pshadow = ((void*)0);
}
