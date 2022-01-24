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
struct display_timing {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 struct device_node* FUNC0 (struct device_node const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*) ; 
 int FUNC2 (struct device_node*,struct display_timing*) ; 

int FUNC3(const struct device_node *np, const char *name,
		struct display_timing *dt)
{
	struct device_node *timing_np;
	int ret;

	if (!np)
		return -EINVAL;

	timing_np = FUNC0(np, name);
	if (!timing_np)
		return -ENOENT;

	ret = FUNC2(timing_np, dt);

	FUNC1(timing_np);

	return ret;
}