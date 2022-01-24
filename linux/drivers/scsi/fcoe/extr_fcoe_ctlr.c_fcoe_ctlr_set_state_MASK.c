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
struct fcoe_ctlr {int state; scalar_t__ lp; } ;
typedef  enum fip_state { ____Placeholder_fip_state } fip_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fcoe_ctlr*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(struct fcoe_ctlr *fip, enum fip_state state)
{
	if (state == fip->state)
		return;
	if (fip->lp)
		FUNC0(fip, "state %s -> %s\n",
			FUNC1(fip->state), FUNC1(state));
	fip->state = state;
}