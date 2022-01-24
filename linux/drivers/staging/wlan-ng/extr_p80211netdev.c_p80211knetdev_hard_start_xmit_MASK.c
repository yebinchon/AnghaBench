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
union p80211_hdr {int /*<<< orphan*/ * data; } ;
struct wlandevice {scalar_t__ state; int macmode; int (* txframe ) (struct wlandevice*,struct sk_buff*,union p80211_hdr*,union p80211_hdr*) ;int /*<<< orphan*/  netdev; int /*<<< orphan*/  ethconv; } ;
struct sk_buff {int /*<<< orphan*/ * data; scalar_t__ len; int /*<<< orphan*/  protocol; } ;
struct p80211_metawep {int /*<<< orphan*/ * data; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  tx_dropped; } ;
struct net_device {TYPE_1__ stats; struct wlandevice* ml_priv; } ;
typedef  int /*<<< orphan*/  p80211_wep ;
typedef  int /*<<< orphan*/  p80211_hdr ;
typedef  int netdev_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 scalar_t__ ETH_P_80211_RAW ; 
 int NETDEV_TX_BUSY ; 
 int NETDEV_TX_OK ; 
 scalar_t__ WLAN_DEVICE_OPEN ; 
#define  WLAN_MACMODE_ESS_AP 130 
#define  WLAN_MACMODE_ESS_STA 129 
#define  WLAN_MACMODE_IBSS_STA 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (union p80211_hdr*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (union p80211_hdr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,char*) ; 
 scalar_t__ FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct wlandevice*,int /*<<< orphan*/ ,struct sk_buff*,union p80211_hdr*,union p80211_hdr*) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,int) ; 
 int FUNC15 (struct wlandevice*,struct sk_buff*,union p80211_hdr*,union p80211_hdr*) ; 

__attribute__((used)) static netdev_tx_t FUNC16(struct sk_buff *skb,
						 struct net_device *netdev)
{
	int result = 0;
	int txresult = -1;
	struct wlandevice *wlandev = netdev->ml_priv;
	union p80211_hdr p80211_hdr;
	struct p80211_metawep p80211_wep;

	p80211_wep.data = NULL;

	if (!skb)
		return NETDEV_TX_OK;

	if (wlandev->state != WLAN_DEVICE_OPEN) {
		result = 1;
		goto failed;
	}

	FUNC5(&p80211_hdr, 0, sizeof(p80211_hdr));
	FUNC5(&p80211_wep, 0, sizeof(p80211_wep));

	if (FUNC8(netdev)) {
		FUNC6(netdev, "called when queue stopped.\n");
		result = 1;
		goto failed;
	}

	FUNC10(netdev);

	/* Check to see that a valid mode is set */
	switch (wlandev->macmode) {
	case WLAN_MACMODE_IBSS_STA:
	case WLAN_MACMODE_ESS_STA:
	case WLAN_MACMODE_ESS_AP:
		break;
	default:
		/* Mode isn't set yet, just drop the frame
		 * and return success .
		 * TODO: we need a saner way to handle this
		 */
		if (FUNC0(skb->protocol) != ETH_P_80211_RAW) {
			FUNC9(wlandev->netdev);
			FUNC7(netdev, "Tx attempt prior to association, frame dropped.\n");
			netdev->stats.tx_dropped++;
			result = 0;
			goto failed;
		}
		break;
	}

	/* Check for raw transmits */
	if (FUNC0(skb->protocol) == ETH_P_80211_RAW) {
		if (!FUNC1(CAP_NET_ADMIN)) {
			result = 1;
			goto failed;
		}
		/* move the header over */
		FUNC4(&p80211_hdr, skb->data, sizeof(p80211_hdr));
		FUNC14(skb, sizeof(p80211_hdr));
	} else {
		if (FUNC13
		    (wlandev, wlandev->ethconv, skb, &p80211_hdr,
		     &p80211_wep) != 0) {
			/* convert failed */
			FUNC6(netdev, "ether_to_80211(%d) failed.\n",
				   wlandev->ethconv);
			result = 1;
			goto failed;
		}
	}
	if (!wlandev->txframe) {
		result = 1;
		goto failed;
	}

	FUNC11(netdev);

	netdev->stats.tx_packets++;
	/* count only the packet payload */
	netdev->stats.tx_bytes += skb->len;

	txresult = wlandev->txframe(wlandev, skb, &p80211_hdr, &p80211_wep);

	if (txresult == 0) {
		/* success and more buf */
		/* avail, re: hw_txdata */
		FUNC12(wlandev->netdev);
		result = NETDEV_TX_OK;
	} else if (txresult == 1) {
		/* success, no more avail */
		FUNC6(netdev, "txframe success, no more bufs\n");
		/* netdev->tbusy = 1;  don't set here, irqhdlr */
		/*   may have already cleared it */
		result = NETDEV_TX_OK;
	} else if (txresult == 2) {
		/* alloc failure, drop frame */
		FUNC6(netdev, "txframe returned alloc_fail\n");
		result = NETDEV_TX_BUSY;
	} else {
		/* buffer full or queue busy, drop frame. */
		FUNC6(netdev, "txframe returned full or busy\n");
		result = NETDEV_TX_BUSY;
	}

failed:
	/* Free up the WEP buffer if it's not the same as the skb */
	if ((p80211_wep.data) && (p80211_wep.data != skb->data))
		FUNC3(p80211_wep.data);

	/* we always free the skb here, never in a lower level. */
	if (!result)
		FUNC2(skb);

	return result;
}