
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ehci_qh_hw {int dummy; } ;
struct ehci_qh {int qh_dma; struct ehci_qh_hw* hw; int * dummy; int unlink_node; int qtd_list; } ;
struct ehci_hcd {int qh_pool; } ;
typedef int gfp_t ;
typedef int dma_addr_t ;


 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ dma_pool_alloc (int ,int ,int *) ;
 int dma_pool_free (int ,struct ehci_qh_hw*,int ) ;
 int ehci_dbg (struct ehci_hcd*,char*) ;
 int * ehci_qtd_alloc (struct ehci_hcd*,int ) ;
 int kfree (struct ehci_qh*) ;
 struct ehci_qh* kzalloc (int,int ) ;
 int memset (struct ehci_qh_hw*,int ,int) ;

__attribute__((used)) static struct ehci_qh *ehci_qh_alloc (struct ehci_hcd *ehci, gfp_t flags)
{
 struct ehci_qh *qh;
 dma_addr_t dma;

 qh = kzalloc(sizeof *qh, GFP_ATOMIC);
 if (!qh)
  goto done;
 qh->hw = (struct ehci_qh_hw *)
  dma_pool_alloc(ehci->qh_pool, flags, &dma);
 if (!qh->hw)
  goto fail;
 memset(qh->hw, 0, sizeof *qh->hw);
 qh->qh_dma = dma;

 INIT_LIST_HEAD (&qh->qtd_list);
 INIT_LIST_HEAD(&qh->unlink_node);


 qh->dummy = ehci_qtd_alloc (ehci, flags);
 if (qh->dummy == ((void*)0)) {
  ehci_dbg (ehci, "no dummy td\n");
  goto fail1;
 }
done:
 return qh;
fail1:
 dma_pool_free(ehci->qh_pool, qh->hw, qh->qh_dma);
fail:
 kfree(qh);
 return ((void*)0);
}
