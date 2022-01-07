
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_hcd_mtk {int vusb33; int vbus; } ;


 int regulator_disable (int ) ;

__attribute__((used)) static void xhci_mtk_ldos_disable(struct xhci_hcd_mtk *mtk)
{
 regulator_disable(mtk->vbus);
 regulator_disable(mtk->vusb33);
}
