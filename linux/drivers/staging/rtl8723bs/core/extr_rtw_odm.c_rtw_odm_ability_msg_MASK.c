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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int BIT0 ; 
 int /*<<< orphan*/  FUNC0 (void*,char*,char,...) ; 
 int /*<<< orphan*/  HW_VAR_DM_FLAG ; 
 int RTW_ODM_ABILITY_MAX ; 
 scalar_t__* odm_ability_str ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC2(void *sel, struct adapter *adapter)
{
	u32 ability = 0;
	int i;

	FUNC1(adapter, HW_VAR_DM_FLAG, (u8 *)&ability);
	FUNC0(sel, "odm.SupportAbility = 0x%08x\n", ability);
	for (i = 0; i < RTW_ODM_ABILITY_MAX; i++) {
		if (odm_ability_str[i])
			FUNC0(sel, "%cBIT%-2d %s\n",
					(BIT0 << i) & ability ? '+' : ' ', i,
					odm_ability_str[i]);
	}
}