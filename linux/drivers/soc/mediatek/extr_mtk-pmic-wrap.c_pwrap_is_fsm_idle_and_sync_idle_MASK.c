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
struct pmic_wrapper {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int PWRAP_STATE_SYNC_IDLE0 ; 
 int /*<<< orphan*/  PWRAP_WACS2_RDATA ; 
 scalar_t__ PWRAP_WACS_FSM_IDLE ; 
 int FUNC1 (struct pmic_wrapper*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC2(struct pmic_wrapper *wrp)
{
	u32 val = FUNC1(wrp, PWRAP_WACS2_RDATA);

	return (FUNC0(val) == PWRAP_WACS_FSM_IDLE) &&
		(val & PWRAP_STATE_SYNC_IDLE0);
}