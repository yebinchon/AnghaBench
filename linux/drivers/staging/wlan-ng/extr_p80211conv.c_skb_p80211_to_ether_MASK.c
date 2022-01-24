#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * a4; int /*<<< orphan*/ * a3; } ;
struct TYPE_5__ {int /*<<< orphan*/ * a2; int /*<<< orphan*/ * a3; int /*<<< orphan*/ * a1; int /*<<< orphan*/  fc; } ;
union p80211_hdr {TYPE_2__ a4; TYPE_1__ a3; } ;
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_7__ {int /*<<< orphan*/  decrypt; int /*<<< orphan*/  decrypt_err; } ;
struct wlandevice {int hostwep; scalar_t__ spy_number; TYPE_3__ rx; struct net_device* netdev; } ;
struct wlan_snap {void* type; int /*<<< orphan*/  oui; } ;
struct wlan_llc {int dsap; int ssap; int ctl; } ;
struct wlan_ethhdr {void* type; int /*<<< orphan*/ * saddr; int /*<<< orphan*/ * daddr; } ;
struct sk_buff {unsigned int len; int /*<<< orphan*/  protocol; scalar_t__ data; } ;
struct net_device {unsigned int mtu; } ;
struct TYPE_8__ {int /*<<< orphan*/  h_source; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 unsigned int ETH_HLEN ; 
 int HOSTWEP_DECRYPT ; 
 int HOSTWEP_PRIVACYINVOKED ; 
 unsigned int WLAN_CRC_LEN ; 
 scalar_t__ WLAN_ETHCONV_8021h ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int WLAN_HDR_A3_LEN ; 
 unsigned int WLAN_HDR_A4_LEN ; 
 int /*<<< orphan*/  WLAN_IEEE_OUI_LEN ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 TYPE_4__* FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC8 (unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (struct wlandevice*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  oui_rfc1042 ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC16 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*,unsigned int) ; 
 struct wlan_ethhdr* FUNC18 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*,unsigned int) ; 
 int FUNC20 (struct wlandevice*,scalar_t__,unsigned int,int,scalar_t__,scalar_t__) ; 

int FUNC21(struct wlandevice *wlandev, u32 ethconv,
			struct sk_buff *skb)
{
	struct net_device *netdev = wlandev->netdev;
	u16 fc;
	unsigned int payload_length;
	unsigned int payload_offset;
	u8 daddr[ETH_ALEN];
	u8 saddr[ETH_ALEN];
	union p80211_hdr *w_hdr;
	struct wlan_ethhdr *e_hdr;
	struct wlan_llc *e_llc;
	struct wlan_snap *e_snap;

	int foo;

	payload_length = skb->len - WLAN_HDR_A3_LEN - WLAN_CRC_LEN;
	payload_offset = WLAN_HDR_A3_LEN;

	w_hdr = (union p80211_hdr *)skb->data;

	/* setup some vars for convenience */
	fc = FUNC9(w_hdr->a3.fc);
	if ((FUNC2(fc) == 0) && (FUNC0(fc) == 0)) {
		FUNC6(daddr, w_hdr->a3.a1);
		FUNC6(saddr, w_hdr->a3.a2);
	} else if ((FUNC2(fc) == 0) &&
		   (FUNC0(fc) == 1)) {
		FUNC6(daddr, w_hdr->a3.a1);
		FUNC6(saddr, w_hdr->a3.a3);
	} else if ((FUNC2(fc) == 1) &&
		   (FUNC0(fc) == 0)) {
		FUNC6(daddr, w_hdr->a3.a3);
		FUNC6(saddr, w_hdr->a3.a2);
	} else {
		payload_offset = WLAN_HDR_A4_LEN;
		if (payload_length < WLAN_HDR_A4_LEN - WLAN_HDR_A3_LEN) {
			FUNC11(netdev, "A4 frame too short!\n");
			return 1;
		}
		payload_length -= (WLAN_HDR_A4_LEN - WLAN_HDR_A3_LEN);
		FUNC6(daddr, w_hdr->a4.a3);
		FUNC6(saddr, w_hdr->a4.a4);
	}

	/* perform de-wep if necessary.. */
	if ((wlandev->hostwep & HOSTWEP_PRIVACYINVOKED) &&
	    FUNC1(fc) &&
	    (wlandev->hostwep & HOSTWEP_DECRYPT)) {
		if (payload_length <= 8) {
			FUNC11(netdev,
				   "WEP frame too short (%u).\n", skb->len);
			return 1;
		}
		foo = FUNC20(wlandev, skb->data + payload_offset + 4,
				  payload_length - 8, -1,
				  skb->data + payload_offset,
				  skb->data + payload_offset +
				  payload_length - 4);
		if (foo) {
			/* de-wep failed, drop skb. */
			FUNC16("Host de-WEP failed, dropping frame (%d).\n",
				 foo);
			wlandev->rx.decrypt_err++;
			return 2;
		}

		/* subtract the IV+ICV length off the payload */
		payload_length -= 8;
		/* chop off the IV */
		FUNC17(skb, 4);
		/* chop off the ICV. */
		FUNC19(skb, skb->len - 4);

		wlandev->rx.decrypt++;
	}

	e_hdr = (struct wlan_ethhdr *)(skb->data + payload_offset);

	e_llc = (struct wlan_llc *)(skb->data + payload_offset);
	e_snap =
	    (struct wlan_snap *)(skb->data + payload_offset +
		sizeof(struct wlan_llc));

	/* Test for the various encodings */
	if ((payload_length >= sizeof(struct wlan_ethhdr)) &&
	    (e_llc->dsap != 0xaa || e_llc->ssap != 0xaa) &&
	    ((!FUNC7(daddr, e_hdr->daddr)) ||
	     (!FUNC7(saddr, e_hdr->saddr)))) {
		FUNC16("802.3 ENCAP len: %d\n", payload_length);
		/* 802.3 Encapsulated */
		/* Test for an overlength frame */
		if (payload_length > (netdev->mtu + ETH_HLEN)) {
			/* A bogus length ethfrm has been encap'd. */
			/* Is someone trying an oflow attack? */
			FUNC11(netdev, "ENCAP frame too large (%d > %d)\n",
				   payload_length, netdev->mtu + ETH_HLEN);
			return 1;
		}

		/* Chop off the 802.11 header.  it's already sane. */
		FUNC17(skb, payload_offset);
		/* chop off the 802.11 CRC */
		FUNC19(skb, skb->len - WLAN_CRC_LEN);

	} else if ((payload_length >= sizeof(struct wlan_llc) +
		sizeof(struct wlan_snap)) &&
		(e_llc->dsap == 0xaa) &&
		(e_llc->ssap == 0xaa) &&
		(e_llc->ctl == 0x03) &&
		   (((FUNC10(e_snap->oui, oui_rfc1042,
		   WLAN_IEEE_OUI_LEN) == 0) &&
		   (ethconv == WLAN_ETHCONV_8021h) &&
		   (FUNC13(FUNC3(e_snap->type)))) ||
		   (FUNC10(e_snap->oui, oui_rfc1042, WLAN_IEEE_OUI_LEN) !=
			0))) {
		FUNC16("SNAP+RFC1042 len: %d\n", payload_length);
		/* it's a SNAP + RFC1042 frame && protocol is in STT */
		/* build 802.3 + RFC1042 */

		/* Test for an overlength frame */
		if (payload_length > netdev->mtu) {
			/* A bogus length ethfrm has been sent. */
			/* Is someone trying an oflow attack? */
			FUNC11(netdev, "SNAP frame too large (%d > %d)\n",
				   payload_length, netdev->mtu);
			return 1;
		}

		/* chop 802.11 header from skb. */
		FUNC17(skb, payload_offset);

		/* create 802.3 header at beginning of skb. */
		e_hdr = FUNC18(skb, ETH_HLEN);
		FUNC6(e_hdr->daddr, daddr);
		FUNC6(e_hdr->saddr, saddr);
		e_hdr->type = FUNC8(payload_length);

		/* chop off the 802.11 CRC */
		FUNC19(skb, skb->len - WLAN_CRC_LEN);

	} else if ((payload_length >= sizeof(struct wlan_llc) +
		sizeof(struct wlan_snap)) &&
		(e_llc->dsap == 0xaa) &&
		(e_llc->ssap == 0xaa) &&
		(e_llc->ctl == 0x03)) {
		FUNC16("802.1h/RFC1042 len: %d\n", payload_length);
		/* it's an 802.1h frame || (an RFC1042 && protocol not in STT)
		 * build a DIXII + RFC894
		 */

		/* Test for an overlength frame */
		if ((payload_length - sizeof(struct wlan_llc) -
			sizeof(struct wlan_snap))
			> netdev->mtu) {
			/* A bogus length ethfrm has been sent. */
			/* Is someone trying an oflow attack? */
			FUNC11(netdev, "DIXII frame too large (%ld > %d)\n",
				   (long)(payload_length -
				   sizeof(struct wlan_llc) -
				   sizeof(struct wlan_snap)), netdev->mtu);
			return 1;
		}

		/* chop 802.11 header from skb. */
		FUNC17(skb, payload_offset);

		/* chop llc header from skb. */
		FUNC17(skb, sizeof(struct wlan_llc));

		/* chop snap header from skb. */
		FUNC17(skb, sizeof(struct wlan_snap));

		/* create 802.3 header at beginning of skb. */
		e_hdr = FUNC18(skb, ETH_HLEN);
		e_hdr->type = e_snap->type;
		FUNC6(e_hdr->daddr, daddr);
		FUNC6(e_hdr->saddr, saddr);

		/* chop off the 802.11 CRC */
		FUNC19(skb, skb->len - WLAN_CRC_LEN);
	} else {
		FUNC16("NON-ENCAP len: %d\n", payload_length);
		/* any NON-ENCAP */
		/* it's a generic 80211+LLC or IPX 'Raw 802.3' */
		/*  build an 802.3 frame */
		/* allocate space and setup hostbuf */

		/* Test for an overlength frame */
		if (payload_length > netdev->mtu) {
			/* A bogus length ethfrm has been sent. */
			/* Is someone trying an oflow attack? */
			FUNC11(netdev, "OTHER frame too large (%d > %d)\n",
				   payload_length, netdev->mtu);
			return 1;
		}

		/* Chop off the 802.11 header. */
		FUNC17(skb, payload_offset);

		/* create 802.3 header at beginning of skb. */
		e_hdr = FUNC18(skb, ETH_HLEN);
		FUNC6(e_hdr->daddr, daddr);
		FUNC6(e_hdr->saddr, saddr);
		e_hdr->type = FUNC8(payload_length);

		/* chop off the 802.11 CRC */
		FUNC19(skb, skb->len - WLAN_CRC_LEN);
	}

	/*
	 * Note that eth_type_trans() expects an skb w/ skb->data pointing
	 * at the MAC header, it then sets the following skb members:
	 * skb->mac_header,
	 * skb->data, and
	 * skb->pkt_type.
	 * It then _returns_ the value that _we're_ supposed to stuff in
	 * skb->protocol.  This is nuts.
	 */
	skb->protocol = FUNC5(skb, netdev);

	/* jkriegl: process signal and noise as set in hfa384x_int_rx() */
	/* jkriegl: only process signal/noise if requested by iwspy */
	if (wlandev->spy_number)
		FUNC12(wlandev, FUNC4(skb)->h_source,
				   FUNC14(skb));

	/* Free the metadata */
	FUNC15(skb);

	return 0;
}