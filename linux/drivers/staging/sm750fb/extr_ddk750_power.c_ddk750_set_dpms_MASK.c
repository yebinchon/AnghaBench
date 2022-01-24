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
typedef  enum dpms { ____Placeholder_dpms } dpms ;

/* Variables and functions */
 int /*<<< orphan*/  CRT_DISPLAY_CTRL ; 
 unsigned int CRT_DISPLAY_CTRL_DPMS_MASK ; 
 int CRT_DISPLAY_CTRL_DPMS_SHIFT ; 
 scalar_t__ SM750LE ; 
 int /*<<< orphan*/  SYSTEM_CTRL ; 
 unsigned int SYSTEM_CTRL_DPMS_MASK ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC2 () ; 

void FUNC3(enum dpms state)
{
	unsigned int value;

	if (FUNC2() == SM750LE) {
		value = FUNC0(CRT_DISPLAY_CTRL) & ~CRT_DISPLAY_CTRL_DPMS_MASK;
		value |= (state << CRT_DISPLAY_CTRL_DPMS_SHIFT);
		FUNC1(CRT_DISPLAY_CTRL, value);
	} else {
		value = FUNC0(SYSTEM_CTRL);
		value = (value & ~SYSTEM_CTRL_DPMS_MASK) | state;
		FUNC1(SYSTEM_CTRL, value);
	}
}