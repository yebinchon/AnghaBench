
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct cdns_pcie {int dummy; } ;


 int cdns_pcie_disable_phy (struct cdns_pcie*) ;
 int dev_dbg (struct device*,char*) ;
 struct cdns_pcie* dev_get_drvdata (struct device*) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_put_sync (struct device*) ;

__attribute__((used)) static void cdns_pcie_ep_shutdown(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct cdns_pcie *pcie = dev_get_drvdata(dev);
 int ret;

 ret = pm_runtime_put_sync(dev);
 if (ret < 0)
  dev_dbg(dev, "pm_runtime_put_sync failed\n");

 pm_runtime_disable(dev);

 cdns_pcie_disable_phy(pcie);
}
