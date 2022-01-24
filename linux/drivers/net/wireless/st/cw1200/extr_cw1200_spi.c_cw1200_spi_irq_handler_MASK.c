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
struct hwbus_priv {scalar_t__ core; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct hwbus_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct hwbus_priv*) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *dev_id)
{
	struct hwbus_priv *self = dev_id;

	if (self->core) {
		FUNC1(self);
		FUNC0(self->core);
		FUNC2(self);
		return IRQ_HANDLED;
	} else {
		return IRQ_NONE;
	}
}