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
typedef  int u16 ;
struct adapter {int dummy; } ;

/* Variables and functions */
 scalar_t__ EFUSE_CTRL ; 
 int FUNC0 (struct adapter*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,scalar_t__,int) ; 

u8 FUNC2(struct adapter *pAdapter, u16 addr, u8 *data)
{
	u8 tmpidx = 0;
	u8 result;

	FUNC1(pAdapter, EFUSE_CTRL + 1, (u8)(addr & 0xff));
	FUNC1(pAdapter, EFUSE_CTRL + 2, ((u8)((addr >> 8) & 0x03)) |
		   (FUNC0(pAdapter, EFUSE_CTRL + 2) & 0xFC));

	FUNC1(pAdapter, EFUSE_CTRL + 3,  0x72);/* read cmd */

	while (!(0x80 & FUNC0(pAdapter, EFUSE_CTRL + 3)) && (tmpidx < 100))
		tmpidx++;
	if (tmpidx < 100) {
		*data = FUNC0(pAdapter, EFUSE_CTRL);
		result = true;
	} else {
		*data = 0xff;
		result = false;
	}
	return result;
}