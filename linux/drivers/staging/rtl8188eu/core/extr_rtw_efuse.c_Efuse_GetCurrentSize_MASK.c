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
typedef  int u8 ;
typedef  scalar_t__ u16 ;
struct adapter {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  HW_VAR_EFUSE_BYTES ; 
 scalar_t__ FUNC2 (struct adapter*,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static u16 FUNC5(struct adapter *pAdapter)
{
	u16	efuse_addr = 0;
	u8 hoffset = 0, hworden = 0;
	u8 efuse_data, word_cnts = 0;

	FUNC3(pAdapter, HW_VAR_EFUSE_BYTES, (u8 *)&efuse_addr);

	while (FUNC2(pAdapter, efuse_addr, &efuse_data) &&
	       FUNC0(efuse_addr)) {
		if (efuse_data != 0xFF) {
			if ((efuse_data & 0x1F) == 0x0F) {		/* extended header */
				hoffset = efuse_data;
				efuse_addr++;
				FUNC2(pAdapter, efuse_addr, &efuse_data);
				if ((efuse_data & 0x0F) == 0x0F) {
					efuse_addr++;
					continue;
				} else {
					hoffset = ((hoffset & 0xE0) >> 5) | ((efuse_data & 0xF0) >> 1);
					hworden = efuse_data & 0x0F;
				}
			} else {
				hoffset = (efuse_data >> 4) & 0x0F;
				hworden =  efuse_data & 0x0F;
			}
			word_cnts = FUNC1(hworden);
			/* read next header */
			efuse_addr = efuse_addr + (word_cnts * 2) + 1;
		} else {
			break;
		}
	}

	FUNC4(pAdapter, HW_VAR_EFUSE_BYTES, (u8 *)&efuse_addr);

	return efuse_addr;
}