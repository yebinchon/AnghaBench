
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct cdns_sierra_phy {int nsubnodes; TYPE_1__* phys; int apb_rst; int phy_rst; } ;
struct TYPE_3__ {int lnk_rst; } ;


 struct cdns_sierra_phy* dev_get_drvdata (int ) ;
 int pm_runtime_disable (TYPE_2__*) ;
 int reset_control_assert (int ) ;
 int reset_control_put (int ) ;

__attribute__((used)) static int cdns_sierra_phy_remove(struct platform_device *pdev)
{
 struct cdns_sierra_phy *phy = dev_get_drvdata(pdev->dev.parent);
 int i;

 reset_control_assert(phy->phy_rst);
 reset_control_assert(phy->apb_rst);
 pm_runtime_disable(&pdev->dev);





 for (i = 0; i < phy->nsubnodes; i++) {
  reset_control_assert(phy->phys[i].lnk_rst);
  reset_control_put(phy->phys[i].lnk_rst);
 }
 return 0;
}
