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
struct platform_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ MAX_COMP2 ; 
 int /*<<< orphan*/  MFGPT_REG_CMP1 ; 
 int /*<<< orphan*/  MFGPT_REG_COUNTER ; 
 int /*<<< orphan*/  MFGPT_REG_SETUP ; 
 scalar_t__ MFGPT_SETUP_CNTEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__* dim_table ; 
 int /*<<< orphan*/  pwm_timer ; 

__attribute__((used)) static int FUNC2(struct platform_device *pdev)
{
	/* on module unload set brightness to 100% */
	FUNC1(pwm_timer, MFGPT_REG_COUNTER, 0);
	FUNC1(pwm_timer, MFGPT_REG_SETUP, MFGPT_SETUP_CNTEN);
	FUNC1(pwm_timer, MFGPT_REG_CMP1,
		MAX_COMP2 - dim_table[100]);

	FUNC0(pwm_timer);

	return 0;
}