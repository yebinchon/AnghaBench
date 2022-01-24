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
 int /*<<< orphan*/  MT_MCU_MEMMAP_BBP ; 
 int /*<<< orphan*/  bbp_chip_vals ; 
 int /*<<< orphan*/  bbp_common_vals ; 
 int FUNC1 (struct mt7601u_dev*) ; 
 int FUNC2 (struct mt7601u_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct mt7601u_dev *dev)
{
	int ret;

	ret = FUNC1(dev);
	if (ret)
		return ret;

	ret = FUNC2(dev, MT_MCU_MEMMAP_BBP, bbp_common_vals,
				      FUNC0(bbp_common_vals));
	if (ret)
		return ret;

	return FUNC2(dev, MT_MCU_MEMMAP_BBP, bbp_chip_vals,
				       FUNC0(bbp_chip_vals));
}