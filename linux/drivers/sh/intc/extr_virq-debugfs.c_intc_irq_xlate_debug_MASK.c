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
struct seq_file {int dummy; } ;
struct intc_map_entry {int enum_id; struct intc_desc_int* desc; } ;
struct TYPE_2__ {int name; } ;
struct intc_desc_int {TYPE_1__ chip; } ;

/* Variables and functions */
 struct intc_map_entry* FUNC0 (int) ; 
 int nr_irqs ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,...) ; 

__attribute__((used)) static int FUNC2(struct seq_file *m, void *priv)
{
	int i;

	FUNC1(m, "%-5s  %-7s  %-15s\n", "irq", "enum", "chip name");

	for (i = 1; i < nr_irqs; i++) {
		struct intc_map_entry *entry = FUNC0(i);
		struct intc_desc_int *desc = entry->desc;

		if (!desc)
			continue;

		FUNC1(m, "%5d  ", i);
		FUNC1(m, "0x%05x  ", entry->enum_id);
		FUNC1(m, "%-15s\n", desc->chip.name);
	}

	return 0;
}