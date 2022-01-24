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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  active_delay ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  inactive_delay ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  reset_gpio ; 
 int /*<<< orphan*/  timeout ; 

__attribute__((used)) static void FUNC5(void)
{
	FUNC0(!reset_gpio);

	/* drive it active, also inactive->active edge */
	FUNC2(reset_gpio, 1);
	FUNC4(active_delay);

	/* drive inactive, also active->inactive edge */
	FUNC3(reset_gpio, 0);
	FUNC4(inactive_delay);

	/* drive it active, also inactive->active edge */
	FUNC3(reset_gpio, 1);

	/* give it some time */
	FUNC4(timeout);

	FUNC1(1);
}