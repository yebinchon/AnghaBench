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

/* Variables and functions */
 int /*<<< orphan*/  IRQF_PROBE_SHARED ; 
 int /*<<< orphan*/  FUNC0 (int,void*) ; 
 int /*<<< orphan*/  legacy_empty_irq_handler ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,void*) ; 

__attribute__((used)) static int FUNC2(int *irq_table)
{
	while (*irq_table != -1) {
		if (!FUNC1(*irq_table, legacy_empty_irq_handler,
		                 IRQF_PROBE_SHARED, "Test IRQ",
		                 (void *)irq_table)) {
			FUNC0(*irq_table, (void *) irq_table);
			return *irq_table;
		}
		irq_table++;
	}
	return -1;
}