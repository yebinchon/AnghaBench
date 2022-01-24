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
typedef  int u32 ;
struct u300_gpio_port {int /*<<< orphan*/  name; } ;
struct u300_gpio {int /*<<< orphan*/  dev; struct u300_gpio_port* ports; } ;
struct irq_data {int hwirq; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int) ; 
 struct u300_gpio* FUNC3 (struct gpio_chip*) ; 
 int /*<<< orphan*/  ien ; 
 struct gpio_chip* FUNC4 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct irq_data *d)
{
	struct gpio_chip *chip = FUNC4(d);
	struct u300_gpio *gpio = FUNC3(chip);
	struct u300_gpio_port *port = &gpio->ports[d->hwirq >> 3];
	int offset = d->hwirq;
	u32 val;
	unsigned long flags;

	FUNC2(gpio->dev, "enable IRQ for hwirq %lu on port %s, offset %d\n",
		 d->hwirq, port->name, offset);
	FUNC6(flags);
	val = FUNC7(FUNC1(offset, ien));
	FUNC8(val | FUNC0(offset), FUNC1(offset, ien));
	FUNC5(flags);
}