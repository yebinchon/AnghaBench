#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  state; } ;
struct mt76x02_dev {TYPE_1__ mt76; } ;
struct mt76_reg_pair {int reg; int value; } ;

/* Variables and functions */
 int /*<<< orphan*/  MT76_STATE_MCU_RUNNING ; 
 int /*<<< orphan*/  MT_MCU_MEMMAP_RF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct mt76x02_dev*) ; 
 int FUNC2 (struct mt76x02_dev*,int /*<<< orphan*/ ,struct mt76_reg_pair*,int) ; 
 int FUNC3 (struct mt76x02_dev*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct mt76x02_dev *dev, u32 offset)
{
	int ret;
	u32 val;

	if (FUNC1(dev)) {
		struct mt76_reg_pair pair = {
			.reg = offset,
		};

		FUNC0(!FUNC4(MT76_STATE_MCU_RUNNING,
				       &dev->mt76.state));
		ret = FUNC2(dev, MT_MCU_MEMMAP_RF, &pair, 1);
		val = pair.value;
	} else {
		ret = val = FUNC3(dev, offset);
	}

	return (ret < 0) ? ret : val;
}