
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ehci_qtd {int qtd_list; void* hw_alt_next; void* hw_next; int hw_token; int qtd_dma; } ;
struct ehci_hcd {int dummy; } ;
typedef int dma_addr_t ;


 void* EHCI_LIST_END (struct ehci_hcd*) ;
 int INIT_LIST_HEAD (int *) ;
 int QTD_STS_HALT ;
 int cpu_to_hc32 (struct ehci_hcd*,int ) ;
 int memset (struct ehci_qtd*,int ,int) ;

__attribute__((used)) static inline void ehci_qtd_init(struct ehci_hcd *ehci, struct ehci_qtd *qtd,
      dma_addr_t dma)
{
 memset (qtd, 0, sizeof *qtd);
 qtd->qtd_dma = dma;
 qtd->hw_token = cpu_to_hc32(ehci, QTD_STS_HALT);
 qtd->hw_next = EHCI_LIST_END(ehci);
 qtd->hw_alt_next = EHCI_LIST_END(ehci);
 INIT_LIST_HEAD (&qtd->qtd_list);
}
