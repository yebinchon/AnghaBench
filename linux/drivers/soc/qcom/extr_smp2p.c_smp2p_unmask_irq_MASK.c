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
struct smp2p_entry {int /*<<< orphan*/  irq_enabled; } ;
struct irq_data {int dummy; } ;
typedef  int /*<<< orphan*/  irq_hw_number_t ;

/* Variables and functions */
 struct smp2p_entry* FUNC0 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct irq_data *irqd)
{
	struct smp2p_entry *entry = FUNC0(irqd);
	irq_hw_number_t irq = FUNC1(irqd);

	FUNC2(irq, entry->irq_enabled);
}