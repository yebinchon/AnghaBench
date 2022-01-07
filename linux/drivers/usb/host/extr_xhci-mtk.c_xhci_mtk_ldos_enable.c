
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_hcd_mtk {int vbus; int dev; int vusb33; } ;


 int dev_err (int ,char*) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;

__attribute__((used)) static int xhci_mtk_ldos_enable(struct xhci_hcd_mtk *mtk)
{
 int ret;

 ret = regulator_enable(mtk->vbus);
 if (ret) {
  dev_err(mtk->dev, "failed to enable vbus\n");
  return ret;
 }

 ret = regulator_enable(mtk->vusb33);
 if (ret) {
  dev_err(mtk->dev, "failed to enable vusb33\n");
  regulator_disable(mtk->vbus);
  return ret;
 }
 return 0;
}
