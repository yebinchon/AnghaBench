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
struct samsung_pin_bank {TYPE_1__* irq_chip; } ;
struct irq_domain {struct samsung_pin_bank* host_data; } ;
typedef  int /*<<< orphan*/  irq_hw_number_t ;
struct TYPE_2__ {int /*<<< orphan*/  chip; } ;

/* Variables and functions */
 int /*<<< orphan*/  handle_level_irq ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,struct samsung_pin_bank*) ; 

__attribute__((used)) static int FUNC2(struct irq_domain *h, unsigned int virq,
					irq_hw_number_t hw)
{
	struct samsung_pin_bank *b = h->host_data;

	FUNC1(virq, b);
	FUNC0(virq, &b->irq_chip->chip,
					handle_level_irq);
	return 0;
}