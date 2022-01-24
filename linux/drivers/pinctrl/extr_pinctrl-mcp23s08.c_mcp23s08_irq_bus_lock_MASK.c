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
struct mcp23s08 {int /*<<< orphan*/  regmap; int /*<<< orphan*/  lock; } ;
struct irq_data {int dummy; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 struct mcp23s08* FUNC0 (struct gpio_chip*) ; 
 struct gpio_chip* FUNC1 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct irq_data *data)
{
	struct gpio_chip *gc = FUNC1(data);
	struct mcp23s08 *mcp = FUNC0(gc);

	FUNC2(&mcp->lock);
	FUNC3(mcp->regmap, true);
}