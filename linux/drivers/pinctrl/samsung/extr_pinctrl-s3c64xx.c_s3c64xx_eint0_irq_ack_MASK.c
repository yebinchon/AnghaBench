#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct samsung_pinctrl_drv_data {scalar_t__ virt_base; } ;
struct s3c64xx_eint0_domain_data {int* eints; TYPE_1__* bank; } ;
struct irq_data {size_t hwirq; } ;
struct TYPE_2__ {struct samsung_pinctrl_drv_data* drvdata; } ;

/* Variables and functions */
 scalar_t__ EINT0PEND_REG ; 
 struct s3c64xx_eint0_domain_data* FUNC0 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct irq_data *irqd)
{
	struct s3c64xx_eint0_domain_data *ddata =
					FUNC0(irqd);
	struct samsung_pinctrl_drv_data *d = ddata->bank->drvdata;

	FUNC1(1 << ddata->eints[irqd->hwirq],
					d->virt_base + EINT0PEND_REG);
}