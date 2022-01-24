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
struct rtw_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int BITS_RXAGC_CCK ; 
 int BITS_RXAGC_OFDM ; 
 int BITS_RX_IQ_WEIGHT ; 
 int BITS_SUBTUNE ; 
 int BIT_BB_CCK_CHECK_EN ; 
 int BIT_CHECK_CCK_EN ; 
 int BIT_NBI_EN ; 
 int BIT_PT_OPT ; 
 int MASKDWORD ; 
 int MASKHWORD ; 
 int MASKLWORD ; 
 int /*<<< orphan*/  REG_BGCTRL ; 
 int /*<<< orphan*/  REG_CCAMSK ; 
 int /*<<< orphan*/  REG_CCKSB ; 
 int /*<<< orphan*/  REG_CCKTXONLY ; 
 int /*<<< orphan*/  REG_CCK_CHECK ; 
 int /*<<< orphan*/  REG_CCK_SOURCE ; 
 int /*<<< orphan*/  REG_DFIRBW ; 
 int /*<<< orphan*/  REG_PT_CHSMO ; 
 int /*<<< orphan*/  REG_RXAGCCTL ; 
 int /*<<< orphan*/  REG_RXAGCCTL0 ; 
 int /*<<< orphan*/  REG_RXCCKSEL ; 
 int /*<<< orphan*/  REG_SBD ; 
 int /*<<< orphan*/  REG_SCOTRK ; 
 int /*<<< orphan*/  REG_TXBWCTL ; 
 int /*<<< orphan*/  REG_TXCLK ; 
 int /*<<< orphan*/  REG_TXDFIR0 ; 
 int /*<<< orphan*/  REG_TXF0 ; 
 int /*<<< orphan*/  REG_TXF1 ; 
 int /*<<< orphan*/  REG_TXF2 ; 
 int /*<<< orphan*/  REG_TXF3 ; 
 int /*<<< orphan*/  REG_TXF4 ; 
 int /*<<< orphan*/  REG_TXF5 ; 
 int /*<<< orphan*/  REG_TXF6 ; 
 int /*<<< orphan*/  REG_TXF7 ; 
#define  RTW_CHANNEL_WIDTH_10 132 
#define  RTW_CHANNEL_WIDTH_20 131 
#define  RTW_CHANNEL_WIDTH_40 130 
#define  RTW_CHANNEL_WIDTH_5 129 
#define  RTW_CHANNEL_WIDTH_80 128 
 int /*<<< orphan*/  FUNC1 (struct rtw_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rtw_dev*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rtw_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct rtw_dev *rtwdev, u8 channel, u8 bw,
				    u8 primary_ch_idx)
{
	if (channel <= 14) {
		FUNC1(rtwdev, REG_BGCTRL, BITS_RX_IQ_WEIGHT);
		FUNC2(rtwdev, REG_RXCCKSEL, 0xf0000000, 0x8);
		FUNC3(rtwdev, REG_TXF4, FUNC0(20));
		FUNC1(rtwdev, REG_CCK_CHECK, BIT_CHECK_CCK_EN);
		FUNC1(rtwdev, REG_CCKTXONLY, BIT_BB_CCK_CHECK_EN);
		FUNC2(rtwdev, REG_CCAMSK, 0x3F000000, 0xF);

		switch (bw) {
		case RTW_CHANNEL_WIDTH_20:
			FUNC2(rtwdev, REG_RXAGCCTL0, BITS_RXAGC_CCK,
					 0x5);
			FUNC2(rtwdev, REG_RXAGCCTL, BITS_RXAGC_CCK,
					 0x5);
			FUNC2(rtwdev, REG_RXAGCCTL0, BITS_RXAGC_OFDM,
					 0x6);
			FUNC2(rtwdev, REG_RXAGCCTL, BITS_RXAGC_OFDM,
					 0x6);
			break;
		case RTW_CHANNEL_WIDTH_40:
			FUNC2(rtwdev, REG_RXAGCCTL0, BITS_RXAGC_CCK,
					 0x4);
			FUNC2(rtwdev, REG_RXAGCCTL, BITS_RXAGC_CCK,
					 0x4);
			FUNC2(rtwdev, REG_RXAGCCTL0, BITS_RXAGC_OFDM,
					 0x0);
			FUNC2(rtwdev, REG_RXAGCCTL, BITS_RXAGC_OFDM,
					 0x0);
			break;
		}
		if (channel == 13 || channel == 14)
			FUNC2(rtwdev, REG_SCOTRK, 0xfff, 0x969);
		else if (channel == 11 || channel == 12)
			FUNC2(rtwdev, REG_SCOTRK, 0xfff, 0x96a);
		else
			FUNC2(rtwdev, REG_SCOTRK, 0xfff, 0x9aa);
		if (channel == 14) {
			FUNC2(rtwdev, REG_TXF0, MASKHWORD, 0x3da0);
			FUNC2(rtwdev, REG_TXF1, MASKDWORD,
					 0x4962c931);
			FUNC2(rtwdev, REG_TXF2, MASKLWORD, 0x6aa3);
			FUNC2(rtwdev, REG_TXF3, MASKHWORD, 0xaa7b);
			FUNC2(rtwdev, REG_TXF4, MASKLWORD, 0xf3d7);
			FUNC2(rtwdev, REG_TXF5, MASKDWORD, 0x0);
			FUNC2(rtwdev, REG_TXF6, MASKDWORD,
					 0xff012455);
			FUNC2(rtwdev, REG_TXF7, MASKDWORD, 0xffff);
		} else {
			FUNC2(rtwdev, REG_TXF0, MASKHWORD, 0x5284);
			FUNC2(rtwdev, REG_TXF1, MASKDWORD,
					 0x3e18fec8);
			FUNC2(rtwdev, REG_TXF2, MASKLWORD, 0x0a88);
			FUNC2(rtwdev, REG_TXF3, MASKHWORD, 0xacc4);
			FUNC2(rtwdev, REG_TXF4, MASKLWORD, 0xc8b2);
			FUNC2(rtwdev, REG_TXF5, MASKDWORD,
					 0x00faf0de);
			FUNC2(rtwdev, REG_TXF6, MASKDWORD,
					 0x00122344);
			FUNC2(rtwdev, REG_TXF7, MASKDWORD,
					 0x0fffffff);
		}
		if (channel == 13)
			FUNC2(rtwdev, REG_TXDFIR0, 0x70, 0x3);
		else
			FUNC2(rtwdev, REG_TXDFIR0, 0x70, 0x1);
	} else if (channel > 35) {
		FUNC3(rtwdev, REG_CCKTXONLY, BIT_BB_CCK_CHECK_EN);
		FUNC3(rtwdev, REG_CCK_CHECK, BIT_CHECK_CCK_EN);
		FUNC3(rtwdev, REG_BGCTRL, BITS_RX_IQ_WEIGHT);
		FUNC1(rtwdev, REG_TXF4, FUNC0(20));
		FUNC2(rtwdev, REG_RXCCKSEL, 0xf0000000, 0x0);
		FUNC2(rtwdev, REG_CCAMSK, 0x3F000000, 0x22);
		FUNC2(rtwdev, REG_TXDFIR0, 0x70, 0x3);
		if (channel >= 36 && channel <= 64) {
			FUNC2(rtwdev, REG_RXAGCCTL0, BITS_RXAGC_OFDM,
					 0x1);
			FUNC2(rtwdev, REG_RXAGCCTL, BITS_RXAGC_OFDM,
					 0x1);
		} else if (channel >= 100 && channel <= 144) {
			FUNC2(rtwdev, REG_RXAGCCTL0, BITS_RXAGC_OFDM,
					 0x2);
			FUNC2(rtwdev, REG_RXAGCCTL, BITS_RXAGC_OFDM,
					 0x2);
		} else if (channel >= 149) {
			FUNC2(rtwdev, REG_RXAGCCTL0, BITS_RXAGC_OFDM,
					 0x3);
			FUNC2(rtwdev, REG_RXAGCCTL, BITS_RXAGC_OFDM,
					 0x3);
		}

		if (channel >= 36 && channel <= 51)
			FUNC2(rtwdev, REG_SCOTRK, 0xfff, 0x494);
		else if (channel >= 52 && channel <= 55)
			FUNC2(rtwdev, REG_SCOTRK, 0xfff, 0x493);
		else if (channel >= 56 && channel <= 111)
			FUNC2(rtwdev, REG_SCOTRK, 0xfff, 0x453);
		else if (channel >= 112 && channel <= 119)
			FUNC2(rtwdev, REG_SCOTRK, 0xfff, 0x452);
		else if (channel >= 120 && channel <= 172)
			FUNC2(rtwdev, REG_SCOTRK, 0xfff, 0x412);
		else if (channel >= 173 && channel <= 177)
			FUNC2(rtwdev, REG_SCOTRK, 0xfff, 0x411);
	}

	switch (bw) {
	case RTW_CHANNEL_WIDTH_20:
		FUNC2(rtwdev, REG_DFIRBW, 0x3FF0, 0x19B);
		FUNC2(rtwdev, REG_TXBWCTL, 0xf, 0x0);
		FUNC2(rtwdev, REG_TXBWCTL, 0xffc0, 0x0);
		FUNC2(rtwdev, REG_TXCLK, 0x700, 0x7);
		FUNC2(rtwdev, REG_TXCLK, 0x700000, 0x6);
		FUNC2(rtwdev, REG_CCK_SOURCE, BIT_NBI_EN, 0x0);
		FUNC2(rtwdev, REG_SBD, BITS_SUBTUNE, 0x1);
		FUNC2(rtwdev, REG_PT_CHSMO, BIT_PT_OPT, 0x0);
		break;
	case RTW_CHANNEL_WIDTH_40:
		FUNC2(rtwdev, REG_CCKSB, FUNC0(4),
				 (primary_ch_idx == 1 ? 1 : 0));
		FUNC2(rtwdev, REG_TXBWCTL, 0xf, 0x5);
		FUNC2(rtwdev, REG_TXBWCTL, 0xc0, 0x0);
		FUNC2(rtwdev, REG_TXBWCTL, 0xff00,
				 (primary_ch_idx | (primary_ch_idx << 4)));
		FUNC2(rtwdev, REG_CCK_SOURCE, BIT_NBI_EN, 0x1);
		FUNC2(rtwdev, REG_SBD, BITS_SUBTUNE, 0x1);
		FUNC2(rtwdev, REG_PT_CHSMO, BIT_PT_OPT, 0x1);
		break;
	case RTW_CHANNEL_WIDTH_80:
		FUNC2(rtwdev, REG_TXBWCTL, 0xf, 0xa);
		FUNC2(rtwdev, REG_TXBWCTL, 0xc0, 0x0);
		FUNC2(rtwdev, REG_TXBWCTL, 0xff00,
				 (primary_ch_idx | (primary_ch_idx << 4)));
		FUNC2(rtwdev, REG_SBD, BITS_SUBTUNE, 0x6);
		FUNC2(rtwdev, REG_PT_CHSMO, BIT_PT_OPT, 0x1);
		break;
	case RTW_CHANNEL_WIDTH_5:
		FUNC2(rtwdev, REG_DFIRBW, 0x3FF0, 0x2AB);
		FUNC2(rtwdev, REG_TXBWCTL, 0xf, 0x0);
		FUNC2(rtwdev, REG_TXBWCTL, 0xffc0, 0x1);
		FUNC2(rtwdev, REG_TXCLK, 0x700, 0x4);
		FUNC2(rtwdev, REG_TXCLK, 0x700000, 0x4);
		FUNC2(rtwdev, REG_CCK_SOURCE, BIT_NBI_EN, 0x0);
		FUNC2(rtwdev, REG_SBD, BITS_SUBTUNE, 0x1);
		FUNC2(rtwdev, REG_PT_CHSMO, BIT_PT_OPT, 0x0);
		break;
	case RTW_CHANNEL_WIDTH_10:
		FUNC2(rtwdev, REG_DFIRBW, 0x3FF0, 0x2AB);
		FUNC2(rtwdev, REG_TXBWCTL, 0xf, 0x0);
		FUNC2(rtwdev, REG_TXBWCTL, 0xffc0, 0x2);
		FUNC2(rtwdev, REG_TXCLK, 0x700, 0x6);
		FUNC2(rtwdev, REG_TXCLK, 0x700000, 0x5);
		FUNC2(rtwdev, REG_CCK_SOURCE, BIT_NBI_EN, 0x0);
		FUNC2(rtwdev, REG_SBD, BITS_SUBTUNE, 0x1);
		FUNC2(rtwdev, REG_PT_CHSMO, BIT_PT_OPT, 0x0);
		break;
	}
}