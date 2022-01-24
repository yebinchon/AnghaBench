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
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MT76_REMOVED ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MT_RF_CSR_CFG ; 
 int /*<<< orphan*/  MT_RF_CSR_CFG_DATA ; 
 int MT_RF_CSR_CFG_KICK ; 
 int /*<<< orphan*/  MT_RF_CSR_CFG_REG_BANK ; 
 int /*<<< orphan*/  MT_RF_CSR_CFG_REG_ID ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mt76x02_dev*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mt76x02_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mt76x02_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct mt76x02_dev *dev, u32 offset)
{
	int ret = -ETIMEDOUT;
	u32 val;
	u8 bank, reg;

	if (FUNC11(MT76_REMOVED, &dev->mt76.state))
		return -ENODEV;

	bank = FUNC2(offset);
	reg = FUNC3(offset);

	if (FUNC4(reg > 127) || FUNC4(bank > 8))
		return -EINVAL;

	FUNC9(&dev->phy_mutex);

	if (!FUNC6(dev, MT_RF_CSR_CFG, MT_RF_CSR_CFG_KICK, 0, 100))
		goto out;

	FUNC8(dev, MT_RF_CSR_CFG,
		FUNC1(MT_RF_CSR_CFG_REG_BANK, bank) |
		FUNC1(MT_RF_CSR_CFG_REG_ID, reg) |
		MT_RF_CSR_CFG_KICK);

	if (!FUNC6(dev, MT_RF_CSR_CFG, MT_RF_CSR_CFG_KICK, 0, 100))
		goto out;

	val = FUNC7(dev, MT_RF_CSR_CFG);
	if (FUNC0(MT_RF_CSR_CFG_REG_ID, val) == reg &&
	    FUNC0(MT_RF_CSR_CFG_REG_BANK, val) == bank)
		ret = FUNC0(MT_RF_CSR_CFG_DATA, val);

out:
	FUNC10(&dev->phy_mutex);

	if (ret < 0)
		FUNC5(dev->mt76.dev, "Error: RF read %d:%d failed:%d!!\n",
			bank, reg, ret);

	return ret;
}