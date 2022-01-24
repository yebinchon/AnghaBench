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
struct mt7601u_dev {int /*<<< orphan*/  reg_atomic_mutex; int /*<<< orphan*/  dev; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MT7601U_STATE_REMOVED ; 
 int /*<<< orphan*/  MT7601U_STATE_WLAN_RUNNING ; 
 int /*<<< orphan*/  MT_BBP_CSR_CFG ; 
 int MT_BBP_CSR_CFG_BUSY ; 
 int /*<<< orphan*/  MT_BBP_CSR_CFG_REG_NUM ; 
 int MT_BBP_CSR_CFG_RW_MODE ; 
 int /*<<< orphan*/  MT_BBP_CSR_CFG_VAL ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mt7601u_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mt7601u_dev*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct mt7601u_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct mt7601u_dev *dev, u8 offset, u8 val)
{
	if (FUNC1(!FUNC7(MT7601U_STATE_WLAN_RUNNING, &dev->state)) ||
	    FUNC7(MT7601U_STATE_REMOVED, &dev->state))
		return;

	FUNC5(&dev->reg_atomic_mutex);

	if (!FUNC4(dev, MT_BBP_CSR_CFG, MT_BBP_CSR_CFG_BUSY, 0, 1000)) {
		FUNC2(dev->dev, "Error: BBP write %02hhx failed!!\n", offset);
		goto out;
	}

	FUNC3(dev, MT_BBP_CSR_CFG,
		   FUNC0(MT_BBP_CSR_CFG_VAL, val) |
		   FUNC0(MT_BBP_CSR_CFG_REG_NUM, offset) |
		   MT_BBP_CSR_CFG_RW_MODE | MT_BBP_CSR_CFG_BUSY);
	FUNC8(dev, offset, val);
out:
	FUNC6(&dev->reg_atomic_mutex);
}