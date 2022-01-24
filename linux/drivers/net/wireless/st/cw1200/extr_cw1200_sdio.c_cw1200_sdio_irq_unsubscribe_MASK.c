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
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct hwbus_priv*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct hwbus_priv *self)
{
	int ret = 0;

	FUNC2("SW IRQ unsubscribe\n");

	if (self->pdata->irq) {
		FUNC0(self->pdata->irq);
		FUNC1(self->pdata->irq, self);
	} else {
		FUNC3(self->func);
		ret = FUNC5(self->func);
		FUNC4(self->func);
	}
	return ret;
}