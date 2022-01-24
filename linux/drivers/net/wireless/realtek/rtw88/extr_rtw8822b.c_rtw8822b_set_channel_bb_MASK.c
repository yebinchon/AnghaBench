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
typedef  int u32 ;
struct rtw_efuse {int rfe_option; } ;
struct rtw_dev {struct rtw_efuse efuse; } ;

/* Variables and functions */
 int const FUNC0 (int) ; 
 int const MASKDWORD ; 
 int const MASKLWORD ; 
 int REG_ACGG2TBL ; 
 int REG_ADC160 ; 
 int REG_ADC40 ; 
 int REG_ADCCLK ; 
 int REG_CCK_CHECK ; 
 int REG_CLKTRK ; 
 int REG_ENTXCCK ; 
 int REG_L1PKWT ; 
 int REG_RFEINV ; 
 int REG_RXCCAMSK ; 
 int REG_RXPSEL ; 
 int /*<<< orphan*/  REG_RXSB ; 
 int REG_TXSF2 ; 
 int REG_TXSF6 ; 
#define  RTW_CHANNEL_WIDTH_10 132 
#define  RTW_CHANNEL_WIDTH_20 131 
#define  RTW_CHANNEL_WIDTH_40 130 
#define  RTW_CHANNEL_WIDTH_5 129 
#define  RTW_CHANNEL_WIDTH_80 128 
 int FUNC1 (struct rtw_dev*,int,int const) ; 
 int /*<<< orphan*/  FUNC2 (struct rtw_dev*,int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC3 (struct rtw_dev*,int,int const,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rtw_dev*,int /*<<< orphan*/ ,int const) ; 

__attribute__((used)) static void FUNC5(struct rtw_dev *rtwdev, u8 channel, u8 bw,
				    u8 primary_ch_idx)
{
	struct rtw_efuse *efuse = &rtwdev->efuse;
	u8 rfe_option = efuse->rfe_option;
	u32 val32;

	if (channel <= 14) {
		FUNC3(rtwdev, REG_RXPSEL, FUNC0(28), 0x1);
		FUNC3(rtwdev, REG_CCK_CHECK, FUNC0(7), 0x0);
		FUNC3(rtwdev, REG_ENTXCCK, FUNC0(18), 0x0);
		FUNC3(rtwdev, REG_RXCCAMSK, 0x0000FC00, 15);

		FUNC3(rtwdev, REG_ACGG2TBL, 0x1f, 0x0);
		FUNC3(rtwdev, REG_CLKTRK, 0x1ffe0000, 0x96a);
		if (channel == 14) {
			FUNC3(rtwdev, REG_TXSF2, MASKDWORD, 0x00006577);
			FUNC3(rtwdev, REG_TXSF6, MASKLWORD, 0x0000);
		} else {
			FUNC3(rtwdev, REG_TXSF2, MASKDWORD, 0x384f6577);
			FUNC3(rtwdev, REG_TXSF6, MASKLWORD, 0x1525);
		}

		FUNC3(rtwdev, REG_RFEINV, 0x300, 0x2);
	} else if (channel > 35) {
		FUNC3(rtwdev, REG_ENTXCCK, FUNC0(18), 0x1);
		FUNC3(rtwdev, REG_CCK_CHECK, FUNC0(7), 0x1);
		FUNC3(rtwdev, REG_RXPSEL, FUNC0(28), 0x0);
		FUNC3(rtwdev, REG_RXCCAMSK, 0x0000FC00, 34);

		if (channel >= 36 && channel <= 64)
			FUNC3(rtwdev, REG_ACGG2TBL, 0x1f, 0x1);
		else if (channel >= 100 && channel <= 144)
			FUNC3(rtwdev, REG_ACGG2TBL, 0x1f, 0x2);
		else if (channel >= 149)
			FUNC3(rtwdev, REG_ACGG2TBL, 0x1f, 0x3);

		if (channel >= 36 && channel <= 48)
			FUNC3(rtwdev, REG_CLKTRK, 0x1ffe0000, 0x494);
		else if (channel >= 52 && channel <= 64)
			FUNC3(rtwdev, REG_CLKTRK, 0x1ffe0000, 0x453);
		else if (channel >= 100 && channel <= 116)
			FUNC3(rtwdev, REG_CLKTRK, 0x1ffe0000, 0x452);
		else if (channel >= 118 && channel <= 177)
			FUNC3(rtwdev, REG_CLKTRK, 0x1ffe0000, 0x412);

		FUNC3(rtwdev, 0xcbc, 0x300, 0x1);
	}

	switch (bw) {
	case RTW_CHANNEL_WIDTH_20:
	default:
		val32 = FUNC1(rtwdev, REG_ADCCLK, MASKDWORD);
		val32 &= 0xFFCFFC00;
		val32 |= (RTW_CHANNEL_WIDTH_20);
		FUNC3(rtwdev, REG_ADCCLK, MASKDWORD, val32);

		FUNC3(rtwdev, REG_ADC160, FUNC0(30), 0x1);
		break;
	case RTW_CHANNEL_WIDTH_40:
		if (primary_ch_idx == 1)
			FUNC4(rtwdev, REG_RXSB, FUNC0(4));
		else
			FUNC2(rtwdev, REG_RXSB, FUNC0(4));

		val32 = FUNC1(rtwdev, REG_ADCCLK, MASKDWORD);
		val32 &= 0xFF3FF300;
		val32 |= (((primary_ch_idx & 0xf) << 2) | RTW_CHANNEL_WIDTH_40);
		FUNC3(rtwdev, REG_ADCCLK, MASKDWORD, val32);

		FUNC3(rtwdev, REG_ADC160, FUNC0(30), 0x1);
		break;
	case RTW_CHANNEL_WIDTH_80:
		val32 = FUNC1(rtwdev, REG_ADCCLK, MASKDWORD);
		val32 &= 0xFCEFCF00;
		val32 |= (((primary_ch_idx & 0xf) << 2) | RTW_CHANNEL_WIDTH_80);
		FUNC3(rtwdev, REG_ADCCLK, MASKDWORD, val32);

		FUNC3(rtwdev, REG_ADC160, FUNC0(30), 0x1);

		if (rfe_option == 2) {
			FUNC3(rtwdev, REG_L1PKWT, 0x0000f000, 0x6);
			FUNC3(rtwdev, REG_ADC40, FUNC0(10), 0x1);
		}
		break;
	case RTW_CHANNEL_WIDTH_5:
		val32 = FUNC1(rtwdev, REG_ADCCLK, MASKDWORD);
		val32 &= 0xEFEEFE00;
		val32 |= ((FUNC0(6) | RTW_CHANNEL_WIDTH_20));
		FUNC3(rtwdev, REG_ADCCLK, MASKDWORD, val32);

		FUNC3(rtwdev, REG_ADC160, FUNC0(30), 0x0);
		FUNC3(rtwdev, REG_ADC40, FUNC0(31), 0x1);
		break;
	case RTW_CHANNEL_WIDTH_10:
		val32 = FUNC1(rtwdev, REG_ADCCLK, MASKDWORD);
		val32 &= 0xEFFEFF00;
		val32 |= ((FUNC0(7) | RTW_CHANNEL_WIDTH_20));
		FUNC3(rtwdev, REG_ADCCLK, MASKDWORD, val32);

		FUNC3(rtwdev, REG_ADC160, FUNC0(30), 0x0);
		FUNC3(rtwdev, REG_ADC40, FUNC0(31), 0x1);
		break;
	}
}