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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u16 ;
struct sk_buff {int /*<<< orphan*/ * data; } ;
struct rx_fwinfo_92d {int dummy; } ;
struct rx_desc_92d {int dummy; } ;
struct rtl_stats {int rx_drvinfo_size; int rx_bufshift; int /*<<< orphan*/  icv; int /*<<< orphan*/  crc; int /*<<< orphan*/  hwerror; } ;
struct rtl_mac {int /*<<< orphan*/ * bssid; } ;
struct rtl_efuse {int /*<<< orphan*/ * dev_addr; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_hdr {int /*<<< orphan*/ * addr3; int /*<<< orphan*/ * addr2; int /*<<< orphan*/ * addr1; int /*<<< orphan*/  frame_control; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 scalar_t__ IEEE80211_FCTL_FROMDS ; 
 scalar_t__ IEEE80211_FCTL_TODS ; 
 scalar_t__ IEEE80211_FTYPE_CTL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,int /*<<< orphan*/ *,struct rtl_stats*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,struct rtl_stats*,struct rx_desc_92d*,struct rx_fwinfo_92d*,int,int,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 struct rtl_efuse* FUNC6 (int /*<<< orphan*/ ) ; 
 struct rtl_mac* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211_hw*) ; 

__attribute__((used)) static void FUNC9(struct ieee80211_hw *hw,
					       struct sk_buff *skb,
					       struct rtl_stats *pstats,
					       struct rx_desc_92d *pdesc,
					       struct rx_fwinfo_92d *p_drvinfo)
{
	struct rtl_mac *mac = FUNC7(FUNC8(hw));
	struct rtl_efuse *rtlefuse = FUNC6(FUNC8(hw));
	struct ieee80211_hdr *hdr;
	u8 *tmp_buf;
	u8 *praddr;
	u16 type, cfc;
	__le16 fc;
	bool packet_matchbssid, packet_toself, packet_beacon = false;

	tmp_buf = skb->data + pstats->rx_drvinfo_size + pstats->rx_bufshift;
	hdr = (struct ieee80211_hdr *)tmp_buf;
	fc = hdr->frame_control;
	cfc = FUNC5(fc);
	type = FUNC0(fc);
	praddr = hdr->addr1;
	packet_matchbssid = ((IEEE80211_FTYPE_CTL != type) &&
	     FUNC3(mac->bssid,
			      (cfc & IEEE80211_FCTL_TODS) ? hdr->addr1 :
			      (cfc & IEEE80211_FCTL_FROMDS) ? hdr->addr2 :
			      hdr->addr3) &&
	     (!pstats->hwerror) && (!pstats->crc) && (!pstats->icv));
	packet_toself = packet_matchbssid &&
			FUNC3(praddr, rtlefuse->dev_addr);
	if (FUNC4(fc))
		packet_beacon = true;
	FUNC2(hw, pstats, pdesc, p_drvinfo,
				   packet_matchbssid, packet_toself,
				   packet_beacon);
	FUNC1(hw, tmp_buf, pstats);
}