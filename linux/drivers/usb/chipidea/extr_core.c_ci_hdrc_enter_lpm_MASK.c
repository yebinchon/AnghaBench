#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int lpm; } ;
struct ci_hdrc {TYPE_1__ hw_bank; } ;
typedef  enum ci_hw_regs { ____Placeholder_ci_hw_regs } ci_hw_regs ;

/* Variables and functions */
 int OP_DEVLC ; 
 int OP_PORTSC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ci_hdrc*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ci_hdrc*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ci_hdrc *ci, bool enable)
{
	enum ci_hw_regs reg = ci->hw_bank.lpm ? OP_DEVLC : OP_PORTSC;
	bool lpm = !!(FUNC1(ci, reg, FUNC0(ci->hw_bank.lpm)));

	if (enable && !lpm)
		FUNC2(ci, reg, FUNC0(ci->hw_bank.lpm),
				FUNC0(ci->hw_bank.lpm));
	else if (!enable && lpm)
		FUNC2(ci, reg, FUNC0(ci->hw_bank.lpm),
				0);
}