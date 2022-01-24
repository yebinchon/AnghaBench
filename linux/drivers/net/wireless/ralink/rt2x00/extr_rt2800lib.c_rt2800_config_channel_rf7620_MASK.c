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
struct TYPE_2__ {int tx_chain_num; int rx_chain_num; } ;
struct rt2x00_dev {int /*<<< orphan*/  flags; TYPE_1__ default_ant; struct rt2800_drv_data* drv_data; } ;
struct rt2800_drv_data {int rx_calibration_bw40; int tx_calibration_bw40; int rx_calibration_bw20; int tx_calibration_bw20; } ;
struct rf_channel {int rf1; int rf2; int rf3; int rf4; int channel; } ;
struct ieee80211_conf {int dummy; } ;
struct channel_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVICE_STATE_SCANNING ; 
 int /*<<< orphan*/  RFCSR13_RDIV_MT7620 ; 
 int /*<<< orphan*/  RFCSR16_RF_PLL_FREQ_SEL_MT7620 ; 
 int /*<<< orphan*/  RFCSR16_SDM_MODE_MT7620 ; 
 int /*<<< orphan*/  RFCSR19_K ; 
 int /*<<< orphan*/  RFCSR1_TX2_EN_MT7620 ; 
 int /*<<< orphan*/  RFCSR21_BIT1 ; 
 int /*<<< orphan*/  RFCSR21_BIT8 ; 
 int /*<<< orphan*/  RFCSR22_FREQPLAN_D_MT7620 ; 
 int /*<<< orphan*/  RFCSR28_CH11_HT40 ; 
 int /*<<< orphan*/  RFCSR2_RX2_EN_MT7620 ; 
 int /*<<< orphan*/  RFCSR2_TX2_EN_MT7620 ; 
 int /*<<< orphan*/  RFCSR42_TX2_EN_MT7620 ; 
 scalar_t__ FUNC0 (struct ieee80211_conf*) ; 
 scalar_t__ FUNC1 (struct rt2x00_dev*) ; 
 int FUNC2 (struct rt2x00_dev*,int) ; 
 int FUNC3 (struct rt2x00_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rt2x00_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rt2x00_dev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct rt2x00_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct rt2x00_dev *rt2x00dev,
					 struct ieee80211_conf *conf,
					 struct rf_channel *rf,
					 struct channel_info *info)
{
	struct rt2800_drv_data *drv_data = rt2x00dev->drv_data;
	u8 rx_agc_fc, tx_agc_fc;
	u8 rfcsr;

	/* Frequeny plan setting */
	/* Rdiv setting (set 0x03 if Xtal==20)
	 * R13[1:0]
	 */
	rfcsr = FUNC2(rt2x00dev, 13);
	FUNC7(&rfcsr, RFCSR13_RDIV_MT7620,
			  FUNC1(rt2x00dev) ? 3 : 0);
	FUNC4(rt2x00dev, 13, rfcsr);

	/* N setting
	 * R20[7:0] in rf->rf1
	 * R21[0] always 0
	 */
	rfcsr = FUNC2(rt2x00dev, 20);
	rfcsr = (rf->rf1 & 0x00ff);
	FUNC4(rt2x00dev, 20, rfcsr);

	rfcsr = FUNC2(rt2x00dev, 21);
	FUNC7(&rfcsr, RFCSR21_BIT1, 0);
	FUNC4(rt2x00dev, 21, rfcsr);

	/* K setting (always 0)
	 * R16[3:0] (RF PLL freq selection)
	 */
	rfcsr = FUNC2(rt2x00dev, 16);
	FUNC7(&rfcsr, RFCSR16_RF_PLL_FREQ_SEL_MT7620, 0);
	FUNC4(rt2x00dev, 16, rfcsr);

	/* D setting (always 0)
	 * R22[2:0] (D=15, R22[2:0]=<111>)
	 */
	rfcsr = FUNC2(rt2x00dev, 22);
	FUNC7(&rfcsr, RFCSR22_FREQPLAN_D_MT7620, 0);
	FUNC4(rt2x00dev, 22, rfcsr);

	/* Ksd setting
	 * Ksd: R17<7:0> in rf->rf2
	 *      R18<7:0> in rf->rf3
	 *      R19<1:0> in rf->rf4
	 */
	rfcsr = FUNC2(rt2x00dev, 17);
	rfcsr = rf->rf2;
	FUNC4(rt2x00dev, 17, rfcsr);

	rfcsr = FUNC2(rt2x00dev, 18);
	rfcsr = rf->rf3;
	FUNC4(rt2x00dev, 18, rfcsr);

	rfcsr = FUNC2(rt2x00dev, 19);
	FUNC7(&rfcsr, RFCSR19_K, rf->rf4);
	FUNC4(rt2x00dev, 19, rfcsr);

	/* Default: XO=20MHz , SDM mode */
	rfcsr = FUNC2(rt2x00dev, 16);
	FUNC7(&rfcsr, RFCSR16_SDM_MODE_MT7620, 0x80);
	FUNC4(rt2x00dev, 16, rfcsr);

	rfcsr = FUNC2(rt2x00dev, 21);
	FUNC7(&rfcsr, RFCSR21_BIT8, 1);
	FUNC4(rt2x00dev, 21, rfcsr);

	rfcsr = FUNC2(rt2x00dev, 1);
	FUNC7(&rfcsr, RFCSR1_TX2_EN_MT7620,
			  rt2x00dev->default_ant.tx_chain_num != 1);
	FUNC4(rt2x00dev, 1, rfcsr);

	rfcsr = FUNC2(rt2x00dev, 2);
	FUNC7(&rfcsr, RFCSR2_TX2_EN_MT7620,
			  rt2x00dev->default_ant.tx_chain_num != 1);
	FUNC7(&rfcsr, RFCSR2_RX2_EN_MT7620,
			  rt2x00dev->default_ant.rx_chain_num != 1);
	FUNC4(rt2x00dev, 2, rfcsr);

	rfcsr = FUNC2(rt2x00dev, 42);
	FUNC7(&rfcsr, RFCSR42_TX2_EN_MT7620,
			  rt2x00dev->default_ant.tx_chain_num != 1);
	FUNC4(rt2x00dev, 42, rfcsr);

	/* RF for DC Cal BW */
	if (FUNC0(conf)) {
		FUNC6(rt2x00dev, 6, 0x10);
		FUNC6(rt2x00dev, 7, 0x10);
		FUNC6(rt2x00dev, 8, 0x04);
		FUNC6(rt2x00dev, 58, 0x10);
		FUNC6(rt2x00dev, 59, 0x10);
	} else {
		FUNC6(rt2x00dev, 6, 0x20);
		FUNC6(rt2x00dev, 7, 0x20);
		FUNC6(rt2x00dev, 8, 0x00);
		FUNC6(rt2x00dev, 58, 0x20);
		FUNC6(rt2x00dev, 59, 0x20);
	}

	if (FUNC0(conf)) {
		FUNC6(rt2x00dev, 58, 0x08);
		FUNC6(rt2x00dev, 59, 0x08);
	} else {
		FUNC6(rt2x00dev, 58, 0x28);
		FUNC6(rt2x00dev, 59, 0x28);
	}

	rfcsr = FUNC2(rt2x00dev, 28);
	FUNC7(&rfcsr, RFCSR28_CH11_HT40,
			  FUNC0(conf) && (rf->channel == 11));
	FUNC4(rt2x00dev, 28, rfcsr);

	if (!FUNC8(DEVICE_STATE_SCANNING, &rt2x00dev->flags)) {
		if (FUNC0(conf)) {
			rx_agc_fc = drv_data->rx_calibration_bw40;
			tx_agc_fc = drv_data->tx_calibration_bw40;
		} else {
			rx_agc_fc = drv_data->rx_calibration_bw20;
			tx_agc_fc = drv_data->tx_calibration_bw20;
		}
		rfcsr = FUNC3(rt2x00dev, 5, 6);
		rfcsr &= (~0x3F);
		rfcsr |= rx_agc_fc;
		FUNC5(rt2x00dev, 5, 6, rfcsr);
		rfcsr = FUNC3(rt2x00dev, 5, 7);
		rfcsr &= (~0x3F);
		rfcsr |= rx_agc_fc;
		FUNC5(rt2x00dev, 5, 7, rfcsr);
		rfcsr = FUNC3(rt2x00dev, 7, 6);
		rfcsr &= (~0x3F);
		rfcsr |= rx_agc_fc;
		FUNC5(rt2x00dev, 7, 6, rfcsr);
		rfcsr = FUNC3(rt2x00dev, 7, 7);
		rfcsr &= (~0x3F);
		rfcsr |= rx_agc_fc;
		FUNC5(rt2x00dev, 7, 7, rfcsr);

		rfcsr = FUNC3(rt2x00dev, 5, 58);
		rfcsr &= (~0x3F);
		rfcsr |= tx_agc_fc;
		FUNC5(rt2x00dev, 5, 58, rfcsr);
		rfcsr = FUNC3(rt2x00dev, 5, 59);
		rfcsr &= (~0x3F);
		rfcsr |= tx_agc_fc;
		FUNC5(rt2x00dev, 5, 59, rfcsr);
		rfcsr = FUNC3(rt2x00dev, 7, 58);
		rfcsr &= (~0x3F);
		rfcsr |= tx_agc_fc;
		FUNC5(rt2x00dev, 7, 58, rfcsr);
		rfcsr = FUNC3(rt2x00dev, 7, 59);
		rfcsr &= (~0x3F);
		rfcsr |= tx_agc_fc;
		FUNC5(rt2x00dev, 7, 59, rfcsr);
	}
}