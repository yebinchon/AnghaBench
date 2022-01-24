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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int /*<<< orphan*/  CURRENT_GATE ; 
 int /*<<< orphan*/  CURRENT_GATE_I2C ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(unsigned int enable)
{
	u32 gate;

	/* Enable I2C Gate */
	gate = FUNC0(CURRENT_GATE);
	if (enable)
		gate |= CURRENT_GATE_I2C;
	else
		gate &= ~CURRENT_GATE_I2C;

	FUNC1(gate);
}