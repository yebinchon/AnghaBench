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
struct reset_control {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct reset_control*) ; 
 int /*<<< orphan*/  FUNC1 (struct reset_control*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct reset_control*) ; 
 int /*<<< orphan*/  reset_list_mutex ; 
 int /*<<< orphan*/  FUNC6 (struct reset_control*) ; 

void FUNC7(struct reset_control *rstc)
{
	if (FUNC0(rstc))
		return;

	if (FUNC5(rstc)) {
		FUNC4(FUNC6(rstc));
		return;
	}

	FUNC2(&reset_list_mutex);
	FUNC1(rstc);
	FUNC3(&reset_list_mutex);
}