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
struct fb_info {int dummy; } ;
struct TYPE_2__ {scalar_t__ is_kicked; } ;

/* Variables and functions */
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__ ps3fb ; 
 int /*<<< orphan*/  FUNC3 (struct fb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static int FUNC8(void *arg)
{
	struct fb_info *info = arg;

	FUNC6();
	while (!FUNC2()) {
		FUNC7();
		FUNC5(TASK_INTERRUPTIBLE);
		if (ps3fb.is_kicked) {
			ps3fb.is_kicked = 0;
			FUNC0();
			FUNC3(info, 0);	/* single buffer */
			FUNC1();
		}
		FUNC4();
	}
	return 0;
}