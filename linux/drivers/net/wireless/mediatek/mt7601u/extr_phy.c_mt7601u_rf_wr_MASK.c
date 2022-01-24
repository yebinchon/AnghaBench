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
struct mt7601u_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  reg_atomic_mutex; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int EINVAL ; 
 int ETIMEDOUT ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MT7601U_STATE_REMOVED ; 
 int /*<<< orphan*/  MT7601U_STATE_WLAN_RUNNING ; 
 int /*<<< orphan*/  MT_RF_CSR_CFG ; 
 int /*<<< orphan*/  MT_RF_CSR_CFG_DATA ; 
 int MT_RF_CSR_CFG_KICK ; 
 int /*<<< orphan*/  MT_RF_CSR_CFG_REG_BANK ; 
 int /*<<< orphan*/  MT_RF_CSR_CFG_REG_ID ; 
 int MT_RF_CSR_CFG_WR ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mt7601u_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mt7601u_dev*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct mt7601u_dev*,int,int,int) ; 

__attribute__((used)) static int
FUNC9(struct mt7601u_dev *dev, u8 bank, u8 offset, u8 value)
{
	int ret = 0;

	if (FUNC1(!FUNC7(MT7601U_STATE_WLAN_RUNNING, &dev->state)) ||
	    FUNC1(offset > 63))
		return -EINVAL;
	if (FUNC7(MT7601U_STATE_REMOVED, &dev->state))
		return 0;

	FUNC5(&dev->reg_atomic_mutex);

	if (!FUNC4(dev, MT_RF_CSR_CFG, MT_RF_CSR_CFG_KICK, 0, 100)) {
		ret = -ETIMEDOUT;
		goto out;
	}

	FUNC3(dev, MT_RF_CSR_CFG,
		   FUNC0(MT_RF_CSR_CFG_DATA, value) |
		   FUNC0(MT_RF_CSR_CFG_REG_BANK, bank) |
		   FUNC0(MT_RF_CSR_CFG_REG_ID, offset) |
		   MT_RF_CSR_CFG_WR |
		   MT_RF_CSR_CFG_KICK);
	FUNC8(dev, bank, offset, value);
out:
	FUNC6(&dev->reg_atomic_mutex);

	if (ret < 0)
		FUNC2(dev->dev, "Error: RF write %02hhx:%02hhx failed:%d!!\n",
			bank, offset, ret);

	return ret;
}