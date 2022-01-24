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
struct npcm7xx_gpio {scalar_t__ base; } ;
struct irq_data {unsigned int hwirq; int /*<<< orphan*/  irq; TYPE_1__* chip; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent_device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 scalar_t__ NPCM7XX_GP_N_EVST ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int,int /*<<< orphan*/ ) ; 
 struct npcm7xx_gpio* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct irq_data*) ; 

__attribute__((used)) static void FUNC5(struct irq_data *d)
{
	struct npcm7xx_gpio *bank =
		FUNC2(FUNC4(d));
	unsigned int gpio = d->hwirq;

	FUNC1(d->chip->parent_device, "irq_ack: %u.%u\n", gpio, d->irq);
	FUNC3(FUNC0(gpio), bank->base + NPCM7XX_GP_N_EVST);
}