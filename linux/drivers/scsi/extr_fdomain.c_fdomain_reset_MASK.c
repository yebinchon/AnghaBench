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
 int /*<<< orphan*/  BCTL_RST ; 
 int /*<<< orphan*/  PARITY_MASK ; 
 scalar_t__ REG_ACTL ; 
 scalar_t__ REG_BCTL ; 
 scalar_t__ REG_MCTL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC2(int base)
{
	FUNC1(BCTL_RST, base + REG_BCTL);
	FUNC0(20);
	FUNC1(0, base + REG_BCTL);
	FUNC0(1150);
	FUNC1(0, base + REG_MCTL);
	FUNC1(PARITY_MASK, base + REG_ACTL);
}