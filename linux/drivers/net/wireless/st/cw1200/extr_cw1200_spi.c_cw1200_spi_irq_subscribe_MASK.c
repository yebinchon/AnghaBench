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
struct hwbus_priv {TYPE_1__* func; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_HIGH ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  cw1200_spi_irq_handler ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct hwbus_priv*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct hwbus_priv*) ; 

__attribute__((used)) static int FUNC5(struct hwbus_priv *self)
{
	int ret;

	FUNC3("SW IRQ subscribe\n");

	ret = FUNC4(self->func->irq, NULL,
				   cw1200_spi_irq_handler,
				   IRQF_TRIGGER_HIGH | IRQF_ONESHOT,
				   "cw1200_wlan_irq", self);
	if (FUNC0(ret < 0))
		goto exit;

	ret = FUNC1(self->func->irq);
	if (FUNC0(ret))
		goto free_irq;

	return 0;

free_irq:
	FUNC2(self->func->irq, self);
exit:
	return ret;
}