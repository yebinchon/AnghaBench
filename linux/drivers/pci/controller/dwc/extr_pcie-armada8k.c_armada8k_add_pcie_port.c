
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct pcie_port {scalar_t__ irq; int * ops; } ;
struct dw_pcie {struct pcie_port pp; } ;
struct armada8k_pcie {struct dw_pcie* pci; } ;


 int IRQF_SHARED ;
 int armada8k_pcie_host_ops ;
 int armada8k_pcie_irq_handler ;
 int dev_err (struct device*,char*,...) ;
 int devm_request_irq (struct device*,int,int ,int ,char*,struct armada8k_pcie*) ;
 int dw_pcie_host_init (struct pcie_port*) ;
 scalar_t__ platform_get_irq (struct platform_device*,int ) ;

__attribute__((used)) static int armada8k_add_pcie_port(struct armada8k_pcie *pcie,
      struct platform_device *pdev)
{
 struct dw_pcie *pci = pcie->pci;
 struct pcie_port *pp = &pci->pp;
 struct device *dev = &pdev->dev;
 int ret;

 pp->ops = &armada8k_pcie_host_ops;

 pp->irq = platform_get_irq(pdev, 0);
 if (pp->irq < 0) {
  dev_err(dev, "failed to get irq for port\n");
  return pp->irq;
 }

 ret = devm_request_irq(dev, pp->irq, armada8k_pcie_irq_handler,
          IRQF_SHARED, "armada8k-pcie", pcie);
 if (ret) {
  dev_err(dev, "failed to request irq %d\n", pp->irq);
  return ret;
 }

 ret = dw_pcie_host_init(pp);
 if (ret) {
  dev_err(dev, "failed to initialize host: %d\n", ret);
  return ret;
 }

 return 0;
}
