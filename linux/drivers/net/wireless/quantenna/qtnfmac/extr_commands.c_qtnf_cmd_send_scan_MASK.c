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
struct sk_buff {int dummy; } ;
struct qtnf_wmac {int /*<<< orphan*/  bus; int /*<<< orphan*/  macid; struct cfg80211_scan_request* scan_req; } ;
struct qlink_cmd {int dummy; } ;
struct ieee80211_channel {int flags; int /*<<< orphan*/  center_freq; int /*<<< orphan*/  hw_value; } ;
struct cfg80211_scan_request {int n_ssids; scalar_t__ ie_len; int n_channels; int flags; int /*<<< orphan*/  mac_addr_mask; int /*<<< orphan*/  mac_addr; struct ieee80211_channel** channels; int /*<<< orphan*/  ie; TYPE_1__* ssids; } ;
struct TYPE_2__ {int /*<<< orphan*/  ssid_len; int /*<<< orphan*/  ssid; } ;

/* Variables and functions */
 int ENOMEM ; 
 int IEEE80211_CHAN_DISABLED ; 
 int NL80211_SCAN_FLAG_FLUSH ; 
 int NL80211_SCAN_FLAG_RANDOM_ADDR ; 
 int /*<<< orphan*/  QLINK_CMD_SCAN ; 
 int /*<<< orphan*/  QLINK_IE_SET_PROBE_REQ ; 
 int /*<<< orphan*/  QLINK_VIFID_RSVD ; 
 int /*<<< orphan*/  QTN_TLV_ID_SCAN_FLUSH ; 
 int /*<<< orphan*/  WLAN_EID_SSID ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct ieee80211_channel*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct qtnf_wmac*,struct sk_buff*) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

int FUNC11(struct qtnf_wmac *mac)
{
	struct sk_buff *cmd_skb;
	struct ieee80211_channel *sc;
	struct cfg80211_scan_request *scan_req = mac->scan_req;
	int n_channels;
	int count = 0;
	int ret;

	cmd_skb = FUNC3(mac->macid, QLINK_VIFID_RSVD,
					    QLINK_CMD_SCAN,
					    sizeof(struct qlink_cmd));
	if (!cmd_skb)
		return -ENOMEM;

	FUNC1(mac->bus);

	if (scan_req->n_ssids != 0) {
		while (count < scan_req->n_ssids) {
			FUNC8(cmd_skb, WLAN_EID_SSID,
				scan_req->ssids[count].ssid,
				scan_req->ssids[count].ssid_len);
			count++;
		}
	}

	if (scan_req->ie_len != 0)
		FUNC10(cmd_skb, QLINK_IE_SET_PROBE_REQ,
					scan_req->ie, scan_req->ie_len);

	if (scan_req->n_channels) {
		n_channels = scan_req->n_channels;
		count = 0;

		while (n_channels != 0) {
			sc = scan_req->channels[count];
			if (sc->flags & IEEE80211_CHAN_DISABLED) {
				n_channels--;
				continue;
			}

			FUNC0("MAC%u: scan chan=%d, freq=%d, flags=%#x\n",
				 mac->macid, sc->hw_value, sc->center_freq,
				 sc->flags);

			FUNC4(cmd_skb, sc);
			n_channels--;
			count++;
		}
	}

	FUNC6(mac, cmd_skb);

	if (scan_req->flags & NL80211_SCAN_FLAG_RANDOM_ADDR) {
		FUNC0("MAC%u: scan with random addr=%pM, mask=%pM\n",
			 mac->macid,
			 scan_req->mac_addr, scan_req->mac_addr_mask);

		FUNC5(cmd_skb, scan_req->mac_addr,
					 scan_req->mac_addr_mask);
	}

	if (scan_req->flags & NL80211_SCAN_FLAG_FLUSH) {
		FUNC0("MAC%u: flush cache before scan\n", mac->macid);

		FUNC9(cmd_skb, QTN_TLV_ID_SCAN_FLUSH);
	}

	ret = FUNC7(mac->bus, cmd_skb);
	if (ret)
		goto out;

out:
	FUNC2(mac->bus);

	return ret;
}