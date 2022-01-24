#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct sk_buff {int /*<<< orphan*/ * data; } ;
struct rx_fwinfo {int dummy; } ;
struct rtl_stats {int rx_drvinfo_size; int rx_bufshift; int /*<<< orphan*/  icv; int /*<<< orphan*/  crc; int /*<<< orphan*/  hwerror; int /*<<< orphan*/  psaddr; } ;
struct rtl_mac {int /*<<< orphan*/ * bssid; } ;
struct rtl_efuse {int /*<<< orphan*/ * dev_addr; } ;
struct ieee80211_qos_hdr {int /*<<< orphan*/  qos_ctrl; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; int /*<<< orphan*/ * addr3; int /*<<< orphan*/ * addr2; int /*<<< orphan*/ * addr1; } ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_6__ {int /*<<< orphan*/  num_non_be_pkt; int /*<<< orphan*/  num_qry_beacon_pkt; } ;
struct TYPE_7__ {TYPE_1__ dbginfo; } ;
struct TYPE_8__ {TYPE_2__ dm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*,struct rtl_stats*,int /*<<< orphan*/ *,struct rx_fwinfo*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hdr*) ; 
 int /*<<< orphan*/ * FUNC4 (struct ieee80211_hdr*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 struct rtl_efuse* FUNC12 (TYPE_3__*) ; 
 struct rtl_mac* FUNC13 (TYPE_3__*) ; 
 TYPE_3__* FUNC14 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC15 (struct ieee80211_hw*,int /*<<< orphan*/ *,struct rtl_stats*) ; 

__attribute__((used)) static void FUNC16(struct ieee80211_hw *hw,
					       struct sk_buff *skb,
					       struct rtl_stats *pstatus,
					       u8 *pdesc,
					       struct rx_fwinfo *p_drvinfo)
{
	struct rtl_mac *mac = FUNC13(FUNC14(hw));
	struct rtl_efuse *rtlefuse = FUNC12(FUNC14(hw));
	struct ieee80211_hdr *hdr;
	u8 *tmp_buf;
	u8 *praddr;
	u8 *psaddr;
	__le16 fc;
	bool packet_matchbssid, packet_toself, packet_beacon;

	tmp_buf = skb->data + pstatus->rx_drvinfo_size +
		  pstatus->rx_bufshift + 24;

	hdr = (struct ieee80211_hdr *)tmp_buf;
	fc = hdr->frame_control;
	praddr = hdr->addr1;
	psaddr = FUNC4(hdr);
	FUNC1(pstatus->psaddr, psaddr);

	packet_matchbssid = (!FUNC8(fc) &&
			       (FUNC2(mac->bssid,
						FUNC6(fc) ?
						hdr->addr1 :
						FUNC5(fc) ?
						hdr->addr2 : hdr->addr3)) &&
				(!pstatus->hwerror) && (!pstatus->crc) &&
				(!pstatus->icv));

	packet_toself = packet_matchbssid &&
			 (FUNC2(praddr, rtlefuse->dev_addr));

	if (FUNC7(fc))
		packet_beacon = true;
	else
		packet_beacon = false;

	if (packet_beacon && packet_matchbssid)
		FUNC14(hw)->dm.dbginfo.num_qry_beacon_pkt++;

	if (packet_matchbssid && FUNC9(hdr->frame_control) &&
	    !FUNC10(FUNC3(hdr))) {
		struct ieee80211_qos_hdr *hdr_qos =
					    (struct ieee80211_qos_hdr *)tmp_buf;
		u16 tid = FUNC11(hdr_qos->qos_ctrl) & 0xf;

		if (tid != 0 && tid != 3)
			FUNC14(hw)->dm.dbginfo.num_non_be_pkt++;
	}

	FUNC0(hw, pstatus, pdesc, p_drvinfo,
				   packet_matchbssid, packet_toself,
				   packet_beacon);
	FUNC15(hw, tmp_buf, pstatus);
}