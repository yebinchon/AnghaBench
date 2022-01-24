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
struct reset_control {int acquired; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct reset_control*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct reset_control*) ; 
 int /*<<< orphan*/  FUNC4 (struct reset_control*) ; 

void FUNC5(struct reset_control *rstc)
{
	if (!rstc || FUNC1(FUNC0(rstc)))
		return;

	if (FUNC3(rstc))
		FUNC2(FUNC4(rstc));
	else
		rstc->acquired = false;
}