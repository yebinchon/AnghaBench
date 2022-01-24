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
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  SOSSI_INIT2_REG ; 
 int /*<<< orphan*/  SOSSI_TEARING_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(int mode, unsigned line)
{
	u32 l;

	l = FUNC1(SOSSI_TEARING_REG);
	l &= ~(((1 << 11) - 1) << 15);
	l |= line << 15;
	l &= ~(0x3 << 26);
	l |= mode << 26;
	FUNC3(SOSSI_TEARING_REG, l);
	if (mode)
		FUNC2(SOSSI_INIT2_REG, 1 << 6);	/* TE logic */
	else
		FUNC0(SOSSI_INIT2_REG, 1 << 6);
}