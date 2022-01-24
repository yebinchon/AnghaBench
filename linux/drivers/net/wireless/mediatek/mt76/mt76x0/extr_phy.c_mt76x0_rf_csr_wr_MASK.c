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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  state; } ;
struct mt76x02_dev {TYPE_1__ mt76; int /*<<< orphan*/  phy_mutex; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ETIMEDOUT ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MT76_REMOVED ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MT_RF_CSR_CFG ; 
 int /*<<< orphan*/  MT_RF_CSR_CFG_DATA ; 
 int MT_RF_CSR_CFG_KICK ; 
 int /*<<< orphan*/  MT_RF_CSR_CFG_REG_BANK ; 
 int /*<<< orphan*/  MT_RF_CSR_CFG_REG_ID ; 
 int MT_RF_CSR_CFG_WR ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mt76x02_dev*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mt76x02_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC10(struct mt76x02_dev *dev, u32 offset, u8 value)
{
	int ret = 0;
	u8 bank, reg;

	if (FUNC9(MT76_REMOVED, &dev->mt76.state))
		return -ENODEV;

	bank = FUNC1(offset);
	reg = FUNC2(offset);

	if (FUNC3(reg > 127) || FUNC3(bank > 8))
		return -EINVAL;

	FUNC7(&dev->phy_mutex);

	if (!FUNC5(dev, MT_RF_CSR_CFG, MT_RF_CSR_CFG_KICK, 0, 100)) {
		ret = -ETIMEDOUT;
		goto out;
	}

	FUNC6(dev, MT_RF_CSR_CFG,
		FUNC0(MT_RF_CSR_CFG_DATA, value) |
		FUNC0(MT_RF_CSR_CFG_REG_BANK, bank) |
		FUNC0(MT_RF_CSR_CFG_REG_ID, reg) |
		MT_RF_CSR_CFG_WR |
		MT_RF_CSR_CFG_KICK);

out:
	FUNC8(&dev->phy_mutex);

	if (ret < 0)
		FUNC4(dev->mt76.dev, "Error: RF write %d:%d failed:%d!!\n",
			bank, reg, ret);

	return ret;
}