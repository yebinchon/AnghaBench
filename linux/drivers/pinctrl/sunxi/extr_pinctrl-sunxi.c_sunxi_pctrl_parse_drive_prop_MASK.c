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
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct device_node*,char*,int*) ; 
 int FUNC1 (int,int) ; 

__attribute__((used)) static int FUNC2(struct device_node *node)
{
	u32 val;

	/* Try the new style binding */
	if (!FUNC0(node, "drive-strength", &val)) {
		/* We can't go below 10mA ... */
		if (val < 10)
			return -EINVAL;

		/* ... and only up to 40 mA ... */
		if (val > 40)
			val = 40;

		/* by steps of 10 mA */
		return FUNC1(val, 10);
	}

	/* And then fall back to the old binding */
	if (FUNC0(node, "allwinner,drive", &val))
		return -EINVAL;

	return (val + 1) * 10;
}