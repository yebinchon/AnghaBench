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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  state; } ;
struct mt76x02_dev {TYPE_1__ mt76; } ;
struct mt76_reg_pair {int /*<<< orphan*/  value; int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  MT76_STATE_MCU_RUNNING ; 
 int /*<<< orphan*/  MT_MCU_MEMMAP_RF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct mt76x02_dev*) ; 
 int FUNC2 (struct mt76x02_dev*,int /*<<< orphan*/ ,struct mt76_reg_pair*,int) ; 
 int FUNC3 (struct mt76x02_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(struct mt76x02_dev *dev, u32 offset, u8 val)
{
	if (FUNC1(dev)) {
		struct mt76_reg_pair pair = {
			.reg = offset,
			.value = val,
		};

		FUNC0(!FUNC4(MT76_STATE_MCU_RUNNING,
				       &dev->mt76.state));
		return FUNC2(dev, MT_MCU_MEMMAP_RF, &pair, 1);
	} else {
		return FUNC3(dev, offset, val);
	}
}