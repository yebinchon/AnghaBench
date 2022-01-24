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
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int HQSEL_BEQ ; 
 int HQSEL_BKQ ; 
 int HQSEL_HIQ ; 
 int HQSEL_MGTQ ; 
 int HQSEL_VIQ ; 
 int HQSEL_VOQ ; 
 scalar_t__ REG_TRXDMA_CTRL ; 
 int TX_SELE_HQ ; 
 int TX_SELE_LQ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 struct rtl_priv* FUNC2 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl_priv*,scalar_t__,int) ; 

__attribute__((used)) static void FUNC4(struct ieee80211_hw *hw,
					       bool wmm_enable,
					       u8 out_ep_num,
					       u8 queue_sel)
{
	u8 hq_sele = 0;
	struct rtl_priv *rtlpriv = FUNC2(hw);

	switch (out_ep_num) {
	case 2:	/* (TX_SELE_HQ|TX_SELE_LQ) */
		if (!wmm_enable) /* typical setting */
			hq_sele =  HQSEL_VOQ | HQSEL_VIQ | HQSEL_MGTQ |
				   HQSEL_HIQ;
		else	/* for WMM */
			hq_sele = HQSEL_VOQ | HQSEL_BEQ | HQSEL_MGTQ |
				  HQSEL_HIQ;
		break;
	case 1:
		if (TX_SELE_LQ == queue_sel) {
			/* map all endpoint to Low queue */
			hq_sele = 0;
		} else if (TX_SELE_HQ == queue_sel) {
			/* map all endpoint to High queue */
			hq_sele =  HQSEL_VOQ | HQSEL_VIQ | HQSEL_BEQ |
				   HQSEL_BKQ | HQSEL_MGTQ | HQSEL_HIQ;
		}
		break;
	default:
		FUNC0(1); /* Shall not reach here! */
		break;
	}
	FUNC3(rtlpriv, (REG_TRXDMA_CTRL+1), hq_sele);
	FUNC1("Tx queue select :0x%02x..\n", hq_sele);
}