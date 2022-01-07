
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_hcd_mtk {int sch_array; } ;


 int kfree (int ) ;

void xhci_mtk_sch_exit(struct xhci_hcd_mtk *mtk)
{
 kfree(mtk->sch_array);
}
