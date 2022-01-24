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
typedef  size_t u8 ;
typedef  size_t u32 ;
struct TYPE_2__ {size_t** hwsec_cam_sta_addr; size_t hwsec_cam_bitmap; } ;
struct rtl_priv {TYPE_1__ sec; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  COMP_SEC ; 
 int /*<<< orphan*/  DBG_DMESG ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,size_t) ; 
 size_t TOTAL_CAM_ENTRY ; 
 int /*<<< orphan*/  FUNC2 (size_t*) ; 
 scalar_t__ FUNC3 (size_t*,size_t*) ; 
 scalar_t__ FUNC4 (size_t*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 struct rtl_priv* FUNC6 (struct ieee80211_hw*) ; 

void FUNC7(struct ieee80211_hw *hw, u8 *sta_addr)
{
	struct rtl_priv *rtlpriv = FUNC6(hw);
	u32 bitmap;
	u8 i, *addr;

	if (NULL == sta_addr) {
		FUNC5("sta_addr is NULL.\n");
		return;
	}

	if (FUNC4(sta_addr)) {
		FUNC5("sta_addr is %pM\n", sta_addr);
		return;
	}
	/* Does STA already exist? */
	for (i = 4; i < TOTAL_CAM_ENTRY; i++) {
		addr = rtlpriv->sec.hwsec_cam_sta_addr[i];
		bitmap = (rtlpriv->sec.hwsec_cam_bitmap) >> i;
		if (((bitmap & FUNC0(0)) == FUNC0(0)) &&
		    (FUNC3(addr, sta_addr))) {
			/* Remove from HW Security CAM */
			FUNC2(rtlpriv->sec.hwsec_cam_sta_addr[i]);
			rtlpriv->sec.hwsec_cam_bitmap &= ~(FUNC0(0) << i);
			FUNC1(rtlpriv, COMP_SEC, DBG_DMESG,
				 "&&&&&&&&&del entry %d\n", i);
		}
	}
	return;
}