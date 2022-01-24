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
struct sk_buff {int /*<<< orphan*/ * data; } ;
struct rx_fwinfo_88e {int dummy; } ;
struct rtl_stats {int rx_drvinfo_size; int rx_bufshift; int /*<<< orphan*/  icv; int /*<<< orphan*/  crc; int /*<<< orphan*/  hwerror; int /*<<< orphan*/  psaddr; } ;
struct rtl_mac {int /*<<< orphan*/ * bssid; } ;
struct rtl_efuse {int /*<<< orphan*/ * dev_addr; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; int /*<<< orphan*/ * addr3; int /*<<< orphan*/ * addr2; int /*<<< orphan*/ * addr1; } ;
typedef  int /*<<< orphan*/  __le32 ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*,struct rtl_stats*,int /*<<< orphan*/ *,struct rx_fwinfo_88e*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,struct rtl_stats*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (struct ieee80211_hdr*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct rtl_efuse* FUNC9 (int /*<<< orphan*/ ) ; 
 struct rtl_mac* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC12 (struct ieee80211_hw*,int /*<<< orphan*/ *,struct rtl_stats*) ; 

__attribute__((used)) static void FUNC13(struct ieee80211_hw *hw,
					       struct sk_buff *skb,
					       struct rtl_stats *pstatus,
					       __le32 *pdesc,
					       struct rx_fwinfo_88e *p_drvinfo)
{
	struct rtl_mac *mac = FUNC10(FUNC11(hw));
	struct rtl_efuse *rtlefuse = FUNC9(FUNC11(hw));
	struct ieee80211_hdr *hdr;
	u8 *tmp_buf;
	u8 *praddr;
	u8 *psaddr;
	__le16 fc;
	bool packet_matchbssid, packet_toself, packet_beacon;

	tmp_buf = skb->data + pstatus->rx_drvinfo_size + pstatus->rx_bufshift;

	hdr = (struct ieee80211_hdr *)tmp_buf;
	fc = hdr->frame_control;
	praddr = hdr->addr1;
	psaddr = FUNC3(hdr);
	FUNC8(pstatus->psaddr, psaddr, ETH_ALEN);

	packet_matchbssid = ((!FUNC7(fc)) &&
	     (FUNC2(mac->bssid, FUNC5(fc) ?
			       hdr->addr1 : FUNC4(fc) ?
			       hdr->addr2 : hdr->addr3)) &&
			       (!pstatus->hwerror) &&
			       (!pstatus->crc) && (!pstatus->icv));

	packet_toself = packet_matchbssid &&
	    (FUNC2(praddr, rtlefuse->dev_addr));

	if (FUNC6(hdr->frame_control))
		packet_beacon = true;
	else
		packet_beacon = false;

	FUNC0(hw, pstatus, pdesc, p_drvinfo,
				   packet_matchbssid, packet_toself,
				   packet_beacon);
	FUNC1(hw, pstatus);
	FUNC12(hw, tmp_buf, pstatus);
}