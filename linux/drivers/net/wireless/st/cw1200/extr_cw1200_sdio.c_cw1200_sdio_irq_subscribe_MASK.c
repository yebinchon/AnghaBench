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
struct hwbus_priv {int /*<<< orphan*/  func; TYPE_1__* pdata; } ;
struct TYPE_2__ {scalar_t__ irq; } ;

/* Variables and functions */
 int FUNC0 (struct hwbus_priv*) ; 
 int /*<<< orphan*/  cw1200_sdio_irq_handler ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct hwbus_priv *self)
{
	int ret = 0;

	FUNC1("SW IRQ subscribe\n");
	FUNC2(self->func);
	if (self->pdata->irq)
		ret = FUNC0(self);
	else
		ret = FUNC3(self->func, cw1200_sdio_irq_handler);

	FUNC4(self->func);
	return ret;
}