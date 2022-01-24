#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct TYPE_3__ {int /*<<< orphan*/  state; } ;
struct mt76x02_dev {TYPE_1__ mt76; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int ETIMEDOUT ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MT76_STATE_INITIALIZED ; 
 int MT_CH_CCA_RC_EN ; 
 int /*<<< orphan*/  MT_CH_TIME_CFG ; 
 int /*<<< orphan*/  MT_CH_TIME_CFG_CH_TIMER_CLR ; 
 int MT_CH_TIME_CFG_EIFS_AS_BUSY ; 
 int MT_CH_TIME_CFG_NAV_AS_BUSY ; 
 int MT_CH_TIME_CFG_RX_AS_BUSY ; 
 int MT_CH_TIME_CFG_TIMER_EN ; 
 int MT_CH_TIME_CFG_TX_AS_BUSY ; 
 int MT_COEXCFG0 ; 
 int /*<<< orphan*/  MT_EE_NIC_CONF_0 ; 
 int MT_EE_NIC_CONF_0_PA_IO_CURRENT ; 
 int /*<<< orphan*/  MT_MAX_LEN_CFG ; 
 int /*<<< orphan*/  MT_XO_CTRL7 ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct mt76x02_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mt76x02_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mt76x02_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mt76x02_dev*) ; 
 int FUNC7 (struct mt76x02_dev*) ; 
 int FUNC8 (struct mt76x02_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct mt76x02_dev*,int,int) ; 
 int FUNC12 (struct mt76x02_dev*) ; 
 int FUNC13 (struct mt76x02_dev*) ; 
 int FUNC14 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(struct mt76x02_dev *dev)
{
	int err;

	FUNC11(dev, true, false);
	if (!FUNC9(&dev->mt76))
		return -ETIMEDOUT;

	FUNC6(dev);
	err = FUNC14(dev);
	if (err < 0)
		return err;

	err = FUNC7(dev);
	if (err < 0)
		return err;

	err = FUNC12(dev);
	if (err < 0)
		return err;

	FUNC10(dev);

	if (FUNC2(&dev->mt76) == 0x7610) {
		u16 val;

		FUNC3(dev, MT_COEXCFG0, FUNC0(0));

		val = FUNC8(dev, MT_EE_NIC_CONF_0);
		if (!(val & MT_EE_NIC_CONF_0_PA_IO_CURRENT))
			FUNC4(dev, MT_XO_CTRL7, 0xc03);
	}

	FUNC3(dev, 0x110, FUNC0(9));
	FUNC4(dev, MT_MAX_LEN_CFG, FUNC0(13));

	FUNC5(dev, MT_CH_TIME_CFG,
		MT_CH_TIME_CFG_TIMER_EN |
		MT_CH_TIME_CFG_TX_AS_BUSY |
		MT_CH_TIME_CFG_RX_AS_BUSY |
		MT_CH_TIME_CFG_NAV_AS_BUSY |
		MT_CH_TIME_CFG_EIFS_AS_BUSY |
		MT_CH_CCA_RC_EN |
		FUNC1(MT_CH_TIME_CFG_CH_TIMER_CLR, 1));

	err = FUNC13(dev);
	if (err < 0)
		return err;

	FUNC15(MT76_STATE_INITIALIZED, &dev->mt76.state);

	return 0;
}