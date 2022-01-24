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
 int /*<<< orphan*/  W83627HF_LD_WDT ; 
 int /*<<< orphan*/  cr_wdt_timeout ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(unsigned int timeout)
{
	int ret;

	ret = FUNC0();
	if (ret)
		return ret;

	FUNC3(W83627HF_LD_WDT);
	FUNC2(cr_wdt_timeout, timeout);
	FUNC1();

	return 0;
}