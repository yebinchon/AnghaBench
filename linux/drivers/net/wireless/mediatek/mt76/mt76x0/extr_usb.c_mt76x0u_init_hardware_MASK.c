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
struct mt76x02_dev {int /*<<< orphan*/  mt76; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MT_CH_TIME_CFG ; 
 int MT_CH_TIME_CFG_EIFS_AS_BUSY ; 
 int MT_CH_TIME_CFG_NAV_AS_BUSY ; 
 int MT_CH_TIME_CFG_RX_AS_BUSY ; 
 int MT_CH_TIME_CFG_TIMER_EN ; 
 int MT_CH_TIME_CFG_TX_AS_BUSY ; 
 int /*<<< orphan*/  MT_TXOP_CTRL_CFG ; 
 int /*<<< orphan*/  MT_TXOP_EXT_CCA_DLY ; 
 int /*<<< orphan*/  MT_TXOP_TRUN_EN ; 
 int /*<<< orphan*/  MT_US_CYC_CFG ; 
 int /*<<< orphan*/  MT_US_CYC_CNT ; 
 int /*<<< orphan*/  FUNC1 (struct mt76x02_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mt76x02_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct mt76x02_dev*,int,int) ; 
 int FUNC6 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct mt76x02_dev*) ; 
 int FUNC8 (struct mt76x02_dev*) ; 

__attribute__((used)) static int FUNC9(struct mt76x02_dev *dev, bool reset)
{
	int err;

	FUNC5(dev, true, reset);

	if (!FUNC3(&dev->mt76))
		return -ETIMEDOUT;

	err = FUNC8(dev);
	if (err < 0)
		return err;

	FUNC7(dev);
	err = FUNC6(dev);
	if (err < 0)
		return err;

	FUNC4(dev);

	FUNC1(dev, MT_US_CYC_CFG, MT_US_CYC_CNT, 0x1e);
	FUNC2(dev, MT_TXOP_CTRL_CFG,
		FUNC0(MT_TXOP_TRUN_EN, 0x3f) |
		FUNC0(MT_TXOP_EXT_CCA_DLY, 0x58));

	FUNC2(dev, MT_CH_TIME_CFG,
		MT_CH_TIME_CFG_TIMER_EN |
		MT_CH_TIME_CFG_TX_AS_BUSY |
		MT_CH_TIME_CFG_RX_AS_BUSY |
		MT_CH_TIME_CFG_NAV_AS_BUSY |
		MT_CH_TIME_CFG_EIFS_AS_BUSY);

	return 0;
}