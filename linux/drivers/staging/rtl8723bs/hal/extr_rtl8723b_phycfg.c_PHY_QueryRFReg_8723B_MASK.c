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
 int FUNC0 (int) ; 
 int FUNC1 (struct adapter*,int /*<<< orphan*/ ,int) ; 

u32 FUNC2(
	struct adapter *Adapter,
	u8 eRFPath,
	u32 RegAddr,
	u32 BitMask
)
{
	u32 Original_Value, BitShift;

#if (DISABLE_BB_RF == 1)
	return 0;
#endif

	Original_Value = FUNC1(Adapter, eRFPath, RegAddr);
	BitShift =  FUNC0(BitMask);

	return (Original_Value & BitMask) >> BitShift;
}