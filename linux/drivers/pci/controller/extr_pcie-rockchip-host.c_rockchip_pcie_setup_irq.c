
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_pcie {struct device* dev; } ;
struct platform_device {int dummy; } ;
struct device {int dummy; } ;


 int IRQF_SHARED ;
 int dev_err (struct device*,char*) ;
 int devm_request_irq (struct device*,int,int ,int ,char*,struct rockchip_pcie*) ;
 int irq_set_chained_handler_and_data (int,int ,struct rockchip_pcie*) ;
 int platform_get_irq_byname (struct platform_device*,char*) ;
 int rockchip_pcie_client_irq_handler ;
 int rockchip_pcie_legacy_int_handler ;
 int rockchip_pcie_subsys_irq_handler ;
 struct platform_device* to_platform_device (struct device*) ;

__attribute__((used)) static int rockchip_pcie_setup_irq(struct rockchip_pcie *rockchip)
{
 int irq, err;
 struct device *dev = rockchip->dev;
 struct platform_device *pdev = to_platform_device(dev);

 irq = platform_get_irq_byname(pdev, "sys");
 if (irq < 0) {
  dev_err(dev, "missing sys IRQ resource\n");
  return irq;
 }

 err = devm_request_irq(dev, irq, rockchip_pcie_subsys_irq_handler,
          IRQF_SHARED, "pcie-sys", rockchip);
 if (err) {
  dev_err(dev, "failed to request PCIe subsystem IRQ\n");
  return err;
 }

 irq = platform_get_irq_byname(pdev, "legacy");
 if (irq < 0) {
  dev_err(dev, "missing legacy IRQ resource\n");
  return irq;
 }

 irq_set_chained_handler_and_data(irq,
      rockchip_pcie_legacy_int_handler,
      rockchip);

 irq = platform_get_irq_byname(pdev, "client");
 if (irq < 0) {
  dev_err(dev, "missing client IRQ resource\n");
  return irq;
 }

 err = devm_request_irq(dev, irq, rockchip_pcie_client_irq_handler,
          IRQF_SHARED, "pcie-client", rockchip);
 if (err) {
  dev_err(dev, "failed to request PCIe client IRQ\n");
  return err;
 }

 return 0;
}
