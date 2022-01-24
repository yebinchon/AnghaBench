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
struct TYPE_2__ {int /*<<< orphan*/  bssid; } ;
struct rtl_priv {TYPE_1__ mac80211; } ;
struct rtl_mac {scalar_t__ link_state; int /*<<< orphan*/  p2p; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; int /*<<< orphan*/  addr3; } ;

/* Variables and functions */
 int FCS_LEN ; 
 scalar_t__ MAC80211_LINKED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct rtl_mac* FUNC4 (struct rtl_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_hw*,void*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_hw*,void*,unsigned int) ; 
 struct rtl_priv* FUNC7 (struct ieee80211_hw*) ; 

void FUNC8(struct ieee80211_hw *hw, void *data, unsigned int len)
{
	struct rtl_priv *rtlpriv = FUNC7(hw);
	struct rtl_mac *mac = FUNC4(FUNC7(hw));
	struct ieee80211_hdr *hdr = data;

	if (!mac->p2p)
		return;
	if (mac->link_state != MAC80211_LINKED)
		return;
	/* min. beacon length + FCS_LEN */
	if (len <= 40 + FCS_LEN)
		return;

	/* and only beacons from the associated BSSID, please */
	if (!FUNC0(hdr->addr3, rtlpriv->mac80211.bssid))
		return;

	/* check if this really is a beacon */
	if (!(FUNC2(hdr->frame_control) ||
	      FUNC3(hdr->frame_control) ||
	      FUNC1(hdr->frame_control)))
		return;

	if (FUNC1(hdr->frame_control))
		FUNC5(hw , data , len - FCS_LEN);
	else
		FUNC6(hw , data , len - FCS_LEN);
}