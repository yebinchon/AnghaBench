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
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,char*,int,...) ; 
 int /*<<< orphan*/  HW_DEF_ODM_DBG_LEVEL ; 
 int RTW_ODM_DBG_LEVEL_NUM ; 
 scalar_t__* odm_dbg_level_str ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC2(void *sel, struct adapter *adapter)
{
	u32 dbg_level;
	int i;

	FUNC1(adapter, HW_DEF_ODM_DBG_LEVEL, &dbg_level);
	FUNC0(sel, "odm.DebugLevel = %u\n", dbg_level);
	for (i = 0; i < RTW_ODM_DBG_LEVEL_NUM; i++) {
		if (odm_dbg_level_str[i])
			FUNC0(sel, "%u %s\n",
					i, odm_dbg_level_str[i]);
	}
}