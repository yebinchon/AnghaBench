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
struct adapter {int dummy; } ;

/* Variables and functions */
 int bMaskDWord ; 
 int FUNC0 (int) ; 
 int FUNC1 (struct adapter*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,int,int) ; 

void FUNC3(struct adapter *adapt, u32 regaddr, u32 bitmask, u32 data)
{
	u32 original_value, bit_shift;

	if (bitmask != bMaskDWord) { /* if not "double word" write */
		original_value = FUNC1(adapt, regaddr);
		bit_shift = FUNC0(bitmask);
		data = (original_value & (~bitmask)) | (data << bit_shift);
	}

	FUNC2(adapt, regaddr, data);
}