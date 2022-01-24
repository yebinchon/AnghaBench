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
struct mt7601u_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MT_AUX_CLK_CFG ; 
 int /*<<< orphan*/  MT_MCU_MEMMAP_WLAN ; 
 int /*<<< orphan*/  mac_chip_vals ; 
 int /*<<< orphan*/  mac_common_vals ; 
 int /*<<< orphan*/  FUNC1 (struct mt7601u_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mt7601u_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mt7601u_dev*) ; 

__attribute__((used)) static int FUNC4(struct mt7601u_dev *dev)
{
	int ret;

	ret = FUNC2(dev, MT_MCU_MEMMAP_WLAN, mac_common_vals,
				      FUNC0(mac_common_vals));
	if (ret)
		return ret;
	ret = FUNC2(dev, MT_MCU_MEMMAP_WLAN,
				      mac_chip_vals, FUNC0(mac_chip_vals));
	if (ret)
		return ret;

	FUNC3(dev);

	FUNC1(dev, MT_AUX_CLK_CFG, 0);

	return 0;
}