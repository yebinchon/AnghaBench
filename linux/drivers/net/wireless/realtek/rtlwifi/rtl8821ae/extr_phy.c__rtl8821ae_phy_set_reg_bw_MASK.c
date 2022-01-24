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
typedef  int u16 ;
struct rtl_priv {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  COMP_ERR ; 
 int /*<<< orphan*/  DBG_WARNING ; 
#define  HT_CHANNEL_WIDTH_20 130 
#define  HT_CHANNEL_WIDTH_20_40 129 
#define  HT_CHANNEL_WIDTH_80 128 
 int /*<<< orphan*/  REG_TRXPTCL_CTL ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (struct rtl_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct rtl_priv *rtlpriv, u8 bw)
{
	u16 reg_rf_mode_bw, tmp = 0;

	reg_rf_mode_bw = FUNC2(rtlpriv, REG_TRXPTCL_CTL);
	switch (bw) {
	case HT_CHANNEL_WIDTH_20:
		FUNC3(rtlpriv, REG_TRXPTCL_CTL, reg_rf_mode_bw & 0xFE7F);
		break;
	case HT_CHANNEL_WIDTH_20_40:
		tmp = reg_rf_mode_bw | FUNC0(7);
		FUNC3(rtlpriv, REG_TRXPTCL_CTL, tmp & 0xFEFF);
		break;
	case HT_CHANNEL_WIDTH_80:
		tmp = reg_rf_mode_bw | FUNC0(8);
		FUNC3(rtlpriv, REG_TRXPTCL_CTL, tmp & 0xFF7F);
		break;
	default:
		FUNC1(rtlpriv, COMP_ERR, DBG_WARNING, "unknown Bandwidth: 0x%x\n", bw);
		break;
	}
}