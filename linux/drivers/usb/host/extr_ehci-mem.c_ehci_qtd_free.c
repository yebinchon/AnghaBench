
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ehci_qtd {int qtd_dma; } ;
struct ehci_hcd {int qtd_pool; } ;


 int dma_pool_free (int ,struct ehci_qtd*,int ) ;

__attribute__((used)) static inline void ehci_qtd_free (struct ehci_hcd *ehci, struct ehci_qtd *qtd)
{
 dma_pool_free (ehci->qtd_pool, qtd, qtd->qtd_dma);
}
