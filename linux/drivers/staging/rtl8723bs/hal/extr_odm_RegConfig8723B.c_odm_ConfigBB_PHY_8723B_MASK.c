#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_4__ {int /*<<< orphan*/  Adapter; } ;
typedef  TYPE_1__* PDM_ODM_T ;

/* Variables and functions */
 int /*<<< orphan*/  ODM_COMP_INIT ; 
 int /*<<< orphan*/  ODM_DBG_TRACE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

void FUNC5(
	PDM_ODM_T pDM_Odm,
	u32 Addr,
	u32 Bitmask,
	u32 Data
)
{
	if (Addr == 0xfe)
		FUNC3(50);
	else if (Addr == 0xfd)
		FUNC2(5);
	else if (Addr == 0xfc)
		FUNC2(1);
	else if (Addr == 0xfb)
		FUNC4(50);
	else if (Addr == 0xfa)
		FUNC4(5);
	else if (Addr == 0xf9)
		FUNC4(1);
	else {
		FUNC1(pDM_Odm->Adapter, Addr, Bitmask, Data);
	}

	/*  Add 1us delay between BB/RF register setting. */
	FUNC4(1);
	FUNC0(pDM_Odm, ODM_COMP_INIT, ODM_DBG_TRACE, ("===> ODM_ConfigBBWithHeaderFile: [PHY_REG] %08X %08X\n", Addr, Data));
}