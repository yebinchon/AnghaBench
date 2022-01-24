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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct rtsx_chip {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int MAX_RW_REG_CNT ; 
 int /*<<< orphan*/  RTSX_HAIMR ; 
 int STATUS_FAIL ; 
 int STATUS_SUCCESS ; 
 int STATUS_TIMEDOUT ; 
 int FUNC1 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rtsx_chip*,int /*<<< orphan*/ ,int) ; 

int FUNC3(struct rtsx_chip *chip, u16 addr, u8 mask, u8 data)
{
	int i;
	u32 val = 3 << 30;

	val |= (u32)(addr & 0x3FFF) << 16;
	val |= (u32)mask << 8;
	val |= (u32)data;

	FUNC2(chip, RTSX_HAIMR, val);

	for (i = 0; i < MAX_RW_REG_CNT; i++) {
		val = FUNC1(chip, RTSX_HAIMR);
		if ((val & FUNC0(31)) == 0) {
			if (data != (u8)val)
				return STATUS_FAIL;

			return STATUS_SUCCESS;
		}
	}

	return STATUS_TIMEDOUT;
}