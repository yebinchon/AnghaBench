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
struct geni_se {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned long,unsigned long) ; 
 int EINVAL ; 
 unsigned long ULONG_MAX ; 
 int FUNC1 (struct geni_se*,unsigned long**) ; 

int FUNC2(struct geni_se *se, unsigned long req_freq,
			   unsigned int *index, unsigned long *res_freq,
			   bool exact)
{
	unsigned long *tbl;
	int num_clk_levels;
	int i;
	unsigned long best_delta;
	unsigned long new_delta;
	unsigned int divider;

	num_clk_levels = FUNC1(se, &tbl);
	if (num_clk_levels < 0)
		return num_clk_levels;

	if (num_clk_levels == 0)
		return -EINVAL;

	best_delta = ULONG_MAX;
	for (i = 0; i < num_clk_levels; i++) {
		divider = FUNC0(tbl[i], req_freq);
		new_delta = req_freq - tbl[i] / divider;
		if (new_delta < best_delta) {
			/* We have a new best! */
			*index = i;
			*res_freq = tbl[i];

			/* If the new best is exact then we're done */
			if (new_delta == 0)
				return 0;

			/* Record how close we got */
			best_delta = new_delta;
		}
	}

	if (exact)
		return -EINVAL;

	return 0;
}