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
struct _adapter {int dummy; } ;

/* Variables and functions */
 int PGPKT_DATA_SIZE ; 
 int FUNC0 (int) ; 
 scalar_t__ efuse_available_max_size ; 
 scalar_t__ FUNC1 (struct _adapter*,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int*,int*) ; 

u8 FUNC4(struct _adapter *adapter, u8 offset, u8 *data)
{
	u8 hoffset = 0, hworden = 0, word_cnts = 0;
	u16 efuse_addr = 0;
	u8 efuse_data;
	u8 tmpidx = 0;
	u8 tmpdata[PGPKT_DATA_SIZE];
	u8 ret = true;

	if (!data)
		return false;
	if (offset > 0x0f)
		return false;
	FUNC2(data, 0xFF, sizeof(u8) * PGPKT_DATA_SIZE);
	while (efuse_addr < efuse_available_max_size) {
		if (FUNC1(adapter, efuse_addr, &efuse_data)) {
			if (efuse_data == 0xFF)
				break;
			hoffset = (efuse_data >> 4) & 0x0F;
			hworden =  efuse_data & 0x0F;
			word_cnts = FUNC0(hworden);
			if (hoffset == offset) {
				FUNC2(tmpdata, 0xFF, PGPKT_DATA_SIZE);
				for (tmpidx = 0; tmpidx < word_cnts * 2;
				     tmpidx++) {
					if (FUNC1(adapter,
					    efuse_addr + 1 + tmpidx,
					    &efuse_data)) {
						tmpdata[tmpidx] = efuse_data;
					} else {
						ret = false;
					}
				}
				FUNC3(hworden, tmpdata, data);
			}
			efuse_addr += 1 + (word_cnts * 2);
		} else {
			ret = false;
			break;
		}
	}
	return ret;
}