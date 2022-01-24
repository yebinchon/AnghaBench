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
struct intc_desc_int {unsigned int nr_reg; unsigned long* reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned long FUNC1 (struct intc_desc_int*,unsigned long) ; 

unsigned int FUNC2(struct intc_desc_int *d, unsigned long address)
{
	unsigned int k;

	address = FUNC1(d, address);

	for (k = 0; k < d->nr_reg; k++) {
		if (d->reg[k] == address)
			return k;
	}

	FUNC0();
	return 0;
}