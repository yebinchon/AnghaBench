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
struct device_node {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct device_node*,char const* const) ; 

int FUNC1(struct device_node *device,
			       const char *const *compat)
{
	unsigned int tmp, score = 0;

	if (!compat)
		return 0;

	while (*compat) {
		tmp = FUNC0(device, *compat);
		if (tmp > score)
			score = tmp;
		compat++;
	}

	return score;
}