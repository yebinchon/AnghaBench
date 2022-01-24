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
typedef  int /*<<< orphan*/  u32 ;
struct irq_data {int dummy; } ;
struct gpio_chip {int dummy; } ;
struct amd_gpio {int /*<<< orphan*/  lock; scalar_t__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  EOI_MASK ; 
 scalar_t__ WAKE_INT_MASTER_REG ; 
 struct amd_gpio* FUNC0 (struct gpio_chip*) ; 
 struct gpio_chip* FUNC1 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct irq_data *d)
{
	u32 reg;
	unsigned long flags;
	struct gpio_chip *gc = FUNC1(d);
	struct amd_gpio *gpio_dev = FUNC0(gc);

	FUNC2(&gpio_dev->lock, flags);
	reg = FUNC4(gpio_dev->base + WAKE_INT_MASTER_REG);
	reg |= EOI_MASK;
	FUNC5(reg, gpio_dev->base + WAKE_INT_MASTER_REG);
	FUNC3(&gpio_dev->lock, flags);
}