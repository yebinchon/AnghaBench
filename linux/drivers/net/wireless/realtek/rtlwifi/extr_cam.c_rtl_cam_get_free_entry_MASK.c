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
typedef  int u32 ;
struct TYPE_2__ {int hwsec_cam_bitmap; size_t** hwsec_cam_sta_addr; } ;
struct rtl_priv {TYPE_1__ sec; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 size_t TOTAL_CAM_ENTRY ; 
 scalar_t__ FUNC1 (size_t*,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (size_t*,size_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 struct rtl_priv* FUNC4 (struct ieee80211_hw*) ; 

u8 FUNC5(struct ieee80211_hw *hw, u8 *sta_addr)
{
	struct rtl_priv *rtlpriv = FUNC4(hw);
	u32 bitmap = (rtlpriv->sec.hwsec_cam_bitmap) >> 4;
	u8 entry_idx = 0;
	u8 i, *addr;

	if (NULL == sta_addr) {
		FUNC3("sta_addr is NULL.\n");
		return TOTAL_CAM_ENTRY;
	}
	/* Does STA already exist? */
	for (i = 4; i < TOTAL_CAM_ENTRY; i++) {
		addr = rtlpriv->sec.hwsec_cam_sta_addr[i];
		if (FUNC1(addr, sta_addr))
			return i;
	}
	/* Get a free CAM entry. */
	for (entry_idx = 4; entry_idx < TOTAL_CAM_ENTRY; entry_idx++) {
		if ((bitmap & FUNC0(0)) == 0) {
			FUNC3("-----hwsec_cam_bitmap: 0x%x entry_idx=%d\n",
			       rtlpriv->sec.hwsec_cam_bitmap, entry_idx);
			rtlpriv->sec.hwsec_cam_bitmap |= FUNC0(0) << entry_idx;
			FUNC2(rtlpriv->sec.hwsec_cam_sta_addr[entry_idx],
			       sta_addr, ETH_ALEN);
			return entry_idx;
		}
		bitmap = bitmap >> 1;
	}
	return TOTAL_CAM_ENTRY;
}