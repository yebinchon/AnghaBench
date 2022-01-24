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

/* Variables and functions */
 int /*<<< orphan*/  CAUSEF_IV ; 
 int /*<<< orphan*/  ST0_BEV ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(bool deep_standby)
{
	FUNC0();

	/* Send IRQs to BMIPS_WARM_RESTART_VEC */
	FUNC3(CAUSEF_IV);
	FUNC5();
	FUNC7(ST0_BEV);
	FUNC5();

	if (deep_standby)
		FUNC2();
	else
		FUNC1();

	/* Send IRQs to normal runtime vectors */
	FUNC4(ST0_BEV);
	FUNC5();
	FUNC6(CAUSEF_IV);
	FUNC5();

	return 0;
}