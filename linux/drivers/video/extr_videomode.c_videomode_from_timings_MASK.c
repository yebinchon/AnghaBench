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
struct display_timings {int dummy; } ;
struct display_timing {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct display_timing* FUNC0 (struct display_timings const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct display_timing*,struct videomode*) ; 

int FUNC2(const struct display_timings *disp,
			  struct videomode *vm, unsigned int index)
{
	struct display_timing *dt;

	dt = FUNC0(disp, index);
	if (!dt)
		return -EINVAL;

	FUNC1(dt, vm);

	return 0;
}