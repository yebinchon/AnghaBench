
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_pcie {int reset_gpio; struct dw_pcie* pci; } ;
struct dw_pcie {struct device* dev; } ;
struct device {int dummy; } ;


 int GPIOF_OUT_INIT_HIGH ;
 int devm_gpio_request_one (struct device*,int ,int ,char*) ;

__attribute__((used)) static void exynos_pcie_assert_reset(struct exynos_pcie *ep)
{
 struct dw_pcie *pci = ep->pci;
 struct device *dev = pci->dev;

 if (ep->reset_gpio >= 0)
  devm_gpio_request_one(dev, ep->reset_gpio,
    GPIOF_OUT_INIT_HIGH, "RESET");
}
