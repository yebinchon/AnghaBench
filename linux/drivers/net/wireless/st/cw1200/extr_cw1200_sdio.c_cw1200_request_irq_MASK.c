#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct hwbus_priv {TYPE_1__* pdata; TYPE_2__* func; } ;
struct TYPE_5__ {int /*<<< orphan*/  num; } ;
struct TYPE_4__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_HIGH ; 
 int /*<<< orphan*/  SDIO_CCCR_IENx ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  cw1200_gpio_hardirq ; 
 int /*<<< orphan*/  cw1200_gpio_irq ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,struct hwbus_priv*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC6(struct hwbus_priv *self)
{
	int ret;
	u8 cccr;

	cccr = FUNC4(self->func, SDIO_CCCR_IENx, &ret);
	if (FUNC1(ret))
		goto err;

	/* Master interrupt enable ... */
	cccr |= FUNC0(0);

	/* ... for our function */
	cccr |= FUNC0(self->func->num);

	FUNC5(self->func, cccr, SDIO_CCCR_IENx, &ret);
	if (FUNC1(ret))
		goto err;

	ret = FUNC2(self->pdata->irq);
	if (FUNC1(ret))
		goto err;

	/* Request the IRQ */
	ret =  FUNC3(self->pdata->irq, cw1200_gpio_hardirq,
				    cw1200_gpio_irq,
				    IRQF_TRIGGER_HIGH | IRQF_ONESHOT,
				    "cw1200_wlan_irq", self);
	if (FUNC1(ret))
		goto err;

	return 0;

err:
	return ret;
}