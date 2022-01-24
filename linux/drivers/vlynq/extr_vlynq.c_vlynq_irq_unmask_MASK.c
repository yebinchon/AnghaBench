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
typedef  int u32 ;
struct vlynq_device {int irq_start; TYPE_1__* remote; } ;
struct irq_data {int irq; } ;
struct TYPE_2__ {int /*<<< orphan*/ * int_device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int VINT_ENABLE ; 
 int FUNC1 (int) ; 
 struct vlynq_device* FUNC2 (struct irq_data*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct irq_data *d)
{
	struct vlynq_device *dev = FUNC2(d);
	int virq;
	u32 val;

	FUNC0(!dev);
	virq = d->irq - dev->irq_start;
	val = FUNC3(&dev->remote->int_device[virq >> 2]);
	val |= (VINT_ENABLE | virq) << FUNC1(virq);
	FUNC4(val, &dev->remote->int_device[virq >> 2]);
}