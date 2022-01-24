#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct samsung_pinctrl_drv_data {int nr_banks; struct device* dev; struct samsung_pin_bank* pin_banks; int /*<<< orphan*/  irq; } ;
struct samsung_pin_bank {scalar_t__ eint_type; int /*<<< orphan*/  irq_domain; int /*<<< orphan*/ * irq_chip; int /*<<< orphan*/  soc_priv; int /*<<< orphan*/  nr_pins; int /*<<< orphan*/  of_node; } ;
struct exynos_eint_gpio_save {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ EINT_TYPE_GPIO ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct samsung_pinctrl_drv_data*) ; 
 int /*<<< orphan*/  exynos_eint_gpio_irq ; 
 int /*<<< orphan*/  exynos_eint_irqd_ops ; 
 int /*<<< orphan*/  exynos_gpio_irq_chip ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct samsung_pin_bank*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(struct samsung_pinctrl_drv_data *d)
{
	struct samsung_pin_bank *bank;
	struct device *dev = d->dev;
	int ret;
	int i;

	if (!d->irq) {
		FUNC0(dev, "irq number not available\n");
		return -EINVAL;
	}

	ret = FUNC3(dev, d->irq, exynos_eint_gpio_irq,
					0, FUNC1(dev), d);
	if (ret) {
		FUNC0(dev, "irq request failed\n");
		return -ENXIO;
	}

	bank = d->pin_banks;
	for (i = 0; i < d->nr_banks; ++i, ++bank) {
		if (bank->eint_type != EINT_TYPE_GPIO)
			continue;
		bank->irq_domain = FUNC4(bank->of_node,
				bank->nr_pins, &exynos_eint_irqd_ops, bank);
		if (!bank->irq_domain) {
			FUNC0(dev, "gpio irq domain add failed\n");
			ret = -ENXIO;
			goto err_domains;
		}

		bank->soc_priv = FUNC2(d->dev,
			sizeof(struct exynos_eint_gpio_save), GFP_KERNEL);
		if (!bank->soc_priv) {
			FUNC5(bank->irq_domain);
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
		FUNC5(bank->irq_domain);
	}

	return ret;
}