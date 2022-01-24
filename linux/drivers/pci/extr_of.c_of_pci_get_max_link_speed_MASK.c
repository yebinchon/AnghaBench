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

int FUNC1(struct device_node *node)
{
	u32 max_link_speed;

	if (FUNC0(node, "max-link-speed", &max_link_speed) ||
	    max_link_speed > 4)
		return -EINVAL;

	return max_link_speed;
}