
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct samsung_pinctrl_drv_data {int nr_banks; struct device* dev; struct samsung_pin_bank* pin_banks; int irq; } ;
struct samsung_pin_bank {scalar_t__ eint_type; int irq_domain; int * irq_chip; int soc_priv; int nr_pins; int of_node; } ;
struct exynos_eint_gpio_save {int dummy; } ;
struct device {int dummy; } ;


 scalar_t__ EINT_TYPE_GPIO ;
 int EINVAL ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int dev_err (struct device*,char*) ;
 int dev_name (struct device*) ;
 int devm_kzalloc (struct device*,int,int ) ;
 int devm_request_irq (struct device*,int ,int ,int ,int ,struct samsung_pinctrl_drv_data*) ;
 int exynos_eint_gpio_irq ;
 int exynos_eint_irqd_ops ;
 int exynos_gpio_irq_chip ;
 int irq_domain_add_linear (int ,int ,int *,struct samsung_pin_bank*) ;
 int irq_domain_remove (int ) ;

int exynos_eint_gpio_init(struct samsung_pinctrl_drv_data *d)
{
 struct samsung_pin_bank *bank;
 struct device *dev = d->dev;
 int ret;
 int i;

 if (!d->irq) {
  dev_err(dev, "irq number not available\n");
  return -EINVAL;
 }

 ret = devm_request_irq(dev, d->irq, exynos_eint_gpio_irq,
     0, dev_name(dev), d);
 if (ret) {
  dev_err(dev, "irq request failed\n");
  return -ENXIO;
 }

 bank = d->pin_banks;
 for (i = 0; i < d->nr_banks; ++i, ++bank) {
  if (bank->eint_type != EINT_TYPE_GPIO)
   continue;
  bank->irq_domain = irq_domain_add_linear(bank->of_node,
    bank->nr_pins, &exynos_eint_irqd_ops, bank);
  if (!bank->irq_domain) {
   dev_err(dev, "gpio irq domain add failed\n");
   ret = -ENXIO;
   goto err_domains;
  }

  bank->soc_priv = devm_kzalloc(d->dev,
   sizeof(struct exynos_eint_gpio_save), GFP_KERNEL);
  if (!bank->soc_priv) {
   irq_domain_remove(bank->irq_domain);
   ret = -ENOMEM;
   goto err_domains;
  }

  bank->irq_chip = &exynos_gpio_irq_chip;
 }

 return 0;

err_domains:
 for (--i, --bank; i >= 0; --i, --bank) {
  if (bank->eint_type != EINT_TYPE_GPIO)
   continue;
  irq_domain_remove(bank->irq_domain);
 }

 return ret;
}
