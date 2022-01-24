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
typedef  int /*<<< orphan*/  u32 ;
struct mt7601u_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  reg_atomic_mutex; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int EINVAL ; 
 int ETIMEDOUT ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MT7601U_STATE_REMOVED ; 
 int /*<<< orphan*/  MT7601U_STATE_WLAN_RUNNING ; 
 int /*<<< orphan*/  MT_BBP_CSR_CFG ; 
 int MT_BBP_CSR_CFG_BUSY ; 
 int MT_BBP_CSR_CFG_READ ; 
 int /*<<< orphan*/  MT_BBP_CSR_CFG_REG_NUM ; 
 int MT_BBP_CSR_CFG_RW_MODE ; 
 int /*<<< orphan*/  MT_BBP_CSR_CFG_VAL ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mt7601u_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mt7601u_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mt7601u_dev*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct mt7601u_dev*,int,int) ; 

__attribute__((used)) static int FUNC11(struct mt7601u_dev *dev, u8 offset)
{
	u32 val;
	int ret = -ETIMEDOUT;

	if (FUNC2(!FUNC9(MT7601U_STATE_WLAN_RUNNING, &dev->state)))
		return -EINVAL;
	if (FUNC9(MT7601U_STATE_REMOVED, &dev->state))
		return 0xff;

	FUNC7(&dev->reg_atomic_mutex);

	if (!FUNC6(dev, MT_BBP_CSR_CFG, MT_BBP_CSR_CFG_BUSY, 0, 1000))
		goto out;

	FUNC5(dev, MT_BBP_CSR_CFG,
		   FUNC1(MT_BBP_CSR_CFG_REG_NUM, offset) |
		   MT_BBP_CSR_CFG_RW_MODE | MT_BBP_CSR_CFG_BUSY |
		   MT_BBP_CSR_CFG_READ);

	if (!FUNC6(dev, MT_BBP_CSR_CFG, MT_BBP_CSR_CFG_BUSY, 0, 1000))
		goto out;

	val = FUNC4(dev, MT_BBP_CSR_CFG);
	if (FUNC0(MT_BBP_CSR_CFG_REG_NUM, val) == offset) {
		ret = FUNC0(MT_BBP_CSR_CFG_VAL, val);
		FUNC10(dev, offset, ret);
	}
out:
	FUNC8(&dev->reg_atomic_mutex);

	if (ret < 0)
		FUNC3(dev->dev, "Error: BBP read %02hhx failed:%d!!\n",
			offset, ret);

	return ret;
}