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
 int /*<<< orphan*/  MFGPT_REG_COUNTER ; 
 int /*<<< orphan*/  MFGPT_REG_SETUP ; 
 int /*<<< orphan*/  MFGPT_SETUP_CNTEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wdt_timer ; 

__attribute__((used)) static void FUNC1(void)
{
	/* Stop the counter */
	FUNC0(wdt_timer, MFGPT_REG_SETUP, 0);

	/* Reset the counter */
	FUNC0(wdt_timer, MFGPT_REG_COUNTER, 0);

	/* Enable the counter */
	FUNC0(wdt_timer, MFGPT_REG_SETUP, MFGPT_SETUP_CNTEN);
}