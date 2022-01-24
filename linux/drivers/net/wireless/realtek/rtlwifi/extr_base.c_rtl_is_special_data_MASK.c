#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  scalar_t__ u16 ;
struct udphdr {int dummy; } ;
struct sk_buff {int dummy; } ;
struct rtl_ps_ctl {void* last_delaylps_stamp_jiffies; } ;
struct TYPE_6__ {int is_special_data; } ;
struct TYPE_4__ {int in_4way; void* in_4way_ts; } ;
struct TYPE_5__ {TYPE_1__ btc_info; } ;
struct rtl_priv {TYPE_3__ ra; TYPE_2__ btcoexist; } ;
struct iphdr {scalar_t__ protocol; int ihl; } ;
struct ieee80211_hw {int dummy; } ;
typedef  int /*<<< orphan*/  __le16 ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int COMP_RECV ; 
 int COMP_SEND ; 
 int /*<<< orphan*/  DBG_DMESG ; 
 scalar_t__ ETH_P_ARP ; 
 scalar_t__ ETH_P_IP ; 
 scalar_t__ ETH_P_IPV6 ; 
 scalar_t__ ETH_P_PAE ; 
 scalar_t__ IPPROTO_UDP ; 
 int /*<<< orphan*/  PACKET_ARP ; 
 int /*<<< orphan*/  PACKET_DHCP ; 
 int /*<<< orphan*/  PACKET_EAPOL ; 
 int PROTOC_TYPE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int,int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void* jiffies ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*) ; 
 struct rtl_priv* FUNC5 (struct ieee80211_hw*) ; 
 struct rtl_ps_ctl* FUNC6 (struct rtl_priv*) ; 
 int* FUNC7 (struct ieee80211_hw*,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct rtl_priv*,struct rtl_ps_ctl*,int /*<<< orphan*/ ) ; 

u8 FUNC9(struct ieee80211_hw *hw, struct sk_buff *skb, u8 is_tx,
		       bool is_enc)
{
	struct rtl_priv *rtlpriv = FUNC5(hw);
	struct rtl_ps_ctl *ppsc = FUNC6(FUNC5(hw));
	__le16 fc = FUNC3(skb);
	u16 ether_type;
	const u8 *ether_type_ptr;
	const struct iphdr *ip;

	if (!FUNC2(fc))
		goto end;

	ether_type_ptr = FUNC7(hw, skb, is_enc);
	ether_type = FUNC1((__be16 *)ether_type_ptr);

	if (ETH_P_IP == ether_type) {
		ip = (struct iphdr *)((u8 *)ether_type_ptr +
		     PROTOC_TYPE_SIZE);
		if (IPPROTO_UDP == ip->protocol) {
			struct udphdr *udp = (struct udphdr *)((u8 *)ip +
							       (ip->ihl << 2));
			if (((((u8 *)udp)[1] == 68) &&
			     (((u8 *)udp)[3] == 67)) ||
			    ((((u8 *)udp)[1] == 67) &&
			     (((u8 *)udp)[3] == 68))) {
				/* 68 : UDP BOOTP client
				 * 67 : UDP BOOTP server
				 */
				FUNC0(rtlpriv, (COMP_SEND | COMP_RECV),
					 DBG_DMESG, "dhcp %s !!\n",
					 (is_tx) ? "Tx" : "Rx");

				if (is_tx)
					FUNC8(rtlpriv, ppsc,
							 PACKET_DHCP);

				return true;
			}
		}
	} else if (ETH_P_ARP == ether_type) {
		if (is_tx)
			FUNC8(rtlpriv, ppsc, PACKET_ARP);

		return true;
	} else if (ETH_P_PAE == ether_type) {
		/* EAPOL is seens as in-4way */
		rtlpriv->btcoexist.btc_info.in_4way = true;
		rtlpriv->btcoexist.btc_info.in_4way_ts = jiffies;

		FUNC0(rtlpriv, (COMP_SEND | COMP_RECV), DBG_DMESG,
			 "802.1X %s EAPOL pkt!!\n", (is_tx) ? "Tx" : "Rx");

		if (is_tx) {
			rtlpriv->ra.is_special_data = true;
			FUNC4(hw);
			ppsc->last_delaylps_stamp_jiffies = jiffies;

			FUNC8(rtlpriv, ppsc, PACKET_EAPOL);
		}

		return true;
	} else if (ETH_P_IPV6 == ether_type) {
		/* TODO: Handle any IPv6 cases that need special handling.
		 * For now, always return false
		 */
		goto end;
	}

end:
	rtlpriv->ra.is_special_data = false;
	return false;
}