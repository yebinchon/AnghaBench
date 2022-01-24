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
struct mt7601u_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  MT_EE_PHYSICAL_READ ; 
 int MT_EE_USAGE_MAP_START ; 
 int MT_EFUSE_USAGE_MAP_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct mt7601u_dev*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,int) ; 

__attribute__((used)) static int
FUNC4(struct mt7601u_dev *dev)
{
	const int map_reads = FUNC0(MT_EFUSE_USAGE_MAP_SIZE, 16);
	u8 data[FUNC3(MT_EFUSE_USAGE_MAP_SIZE, 16)];
	int ret, i;
	u32 start = 0, end = 0, cnt_free;

	for (i = 0; i < map_reads; i++) {
		ret = FUNC2(dev, MT_EE_USAGE_MAP_START + i * 16,
					 data + i * 16, MT_EE_PHYSICAL_READ);
		if (ret)
			return ret;
	}

	for (i = 0; i < MT_EFUSE_USAGE_MAP_SIZE; i++)
		if (!data[i]) {
			if (!start)
				start = MT_EE_USAGE_MAP_START + i;
			end = MT_EE_USAGE_MAP_START + i;
		}
	cnt_free = end - start + 1;

	if (MT_EFUSE_USAGE_MAP_SIZE - cnt_free < 5) {
		FUNC1(dev->dev, "Error: your device needs default EEPROM file and this driver doesn't support it!\n");
		return -EINVAL;
	}

	return 0;
}