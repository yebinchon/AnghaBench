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
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  MAX_AGGR_NUM ; 
 int REG_MAX_AGGR_NUM ; 
 int* array_MAC_REG_8188E ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,int,int /*<<< orphan*/ ) ; 

bool FUNC2(struct adapter *adapt)
{
	u32 i;
	u32 arraylength;
	u32 *ptrarray;

	arraylength = FUNC0(array_MAC_REG_8188E);
	ptrarray = array_MAC_REG_8188E;

	for (i = 0; i < arraylength; i += 2)
		FUNC1(adapt, ptrarray[i], (u8)ptrarray[i + 1]);

	FUNC1(adapt, REG_MAX_AGGR_NUM, MAX_AGGR_NUM);
	return true;
}