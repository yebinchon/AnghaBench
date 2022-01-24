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
struct voltage_map_desc {int min; int max; int step; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int EINVAL ; 

__attribute__((used)) static inline int FUNC1(
		const struct voltage_map_desc *desc,
		int min_vol, int max_vol)
{
	int i;

	if (desc == NULL)
		return -EINVAL;

	if (max_vol < desc->min || min_vol > desc->max)
		return -EINVAL;

	if (min_vol < desc->min)
		min_vol = desc->min;

	i = FUNC0(min_vol - desc->min, desc->step);

	if (desc->min + desc->step * i > max_vol)
		return -EINVAL;

	return i;
}