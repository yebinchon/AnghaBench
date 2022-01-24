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
struct apertures_struct {TYPE_1__* ranges; } ;
struct TYPE_2__ {int /*<<< orphan*/  size; scalar_t__ base; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct apertures_struct* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct apertures_struct*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct apertures_struct*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  registration_lock ; 

int FUNC5(struct apertures_struct *a,
				    const char *name, bool primary)
{
	bool do_free = false;

	if (!a) {
		a = FUNC0(1);
		if (!a)
			return -ENOMEM;

		a->ranges[0].base = 0;
		a->ranges[0].size = ~0;
		do_free = true;
	}

	FUNC3(&registration_lock);
	FUNC1(a, name, primary);
	FUNC4(&registration_lock);

	if (do_free)
		FUNC2(a);

	return 0;
}