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
struct videomode {int dummy; } ;
struct display_timings {int native_mode; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int OF_USE_NATIVE_MODE ; 
 int /*<<< orphan*/  FUNC0 (struct display_timings*) ; 
 struct display_timings* FUNC1 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct device_node*) ; 
 int FUNC3 (struct display_timings*,struct videomode*,int) ; 

int FUNC4(struct device_node *np, struct videomode *vm,
		     int index)
{
	struct display_timings *disp;
	int ret;

	disp = FUNC1(np);
	if (!disp) {
		FUNC2("%pOF: no timings specified\n", np);
		return -EINVAL;
	}

	if (index == OF_USE_NATIVE_MODE)
		index = disp->native_mode;

	ret = FUNC3(disp, vm, index);

	FUNC0(disp);

	return ret;
}