#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u64 ;
struct rtl_priv {TYPE_2__* cfg; } ;
struct ieee80211_hw {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_4__ {TYPE_1__* mod_params; } ;
struct TYPE_3__ {int dma64; } ;

/* Variables and functions */
#define  HW_DESC_OWN 131 
#define  HW_DESC_RXBUFF_ADDR 130 
#define  HW_DESC_RXPKT_LEN 129 
#define  HW_DESC_TXBUFF_ADDR 128 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int) ; 
 struct rtl_priv* FUNC7 (struct ieee80211_hw*) ; 

u64 FUNC8(struct ieee80211_hw *hw,
		     u8 *pdesc8, bool istx, u8 desc_name)
{
	struct rtl_priv *rtlpriv = FUNC7(hw);
	u64 ret = 0;
	bool dma64 = rtlpriv->cfg->mod_params->dma64;
	__le32 *pdesc = (__le32 *)pdesc8;

	if (istx) {
		switch (desc_name) {
		case HW_DESC_OWN:
			ret = FUNC4(pdesc);
			break;
		case HW_DESC_TXBUFF_ADDR:
			ret = FUNC6(pdesc, 1);
			ret |= (u64)FUNC5(pdesc, 1,
								dma64) << 32;
			break;
		default:
			FUNC0(true,
				  "rtl8192ee: ERR txdesc :%d not processed\n",
				  desc_name);
			break;
		}
	} else {
		switch (desc_name) {
		case HW_DESC_OWN:
			ret = FUNC2(pdesc);
			break;
		case HW_DESC_RXPKT_LEN:
			ret = FUNC3(pdesc);
			break;
		case HW_DESC_RXBUFF_ADDR:
			ret = FUNC1(pdesc);
			break;
		default:
			FUNC0(true,
				  "rtl8192ee: ERR rxdesc :%d not processed\n",
				  desc_name);
			break;
		}
	}
	return ret;
}