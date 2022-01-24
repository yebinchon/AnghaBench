#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned char u8 ;
struct wpa_eapol_key {int /*<<< orphan*/  key_info; } ;
struct sk_buff {unsigned int len; unsigned char* data; } ;
struct TYPE_8__ {int stop; scalar_t__ failure; } ;
struct TYPE_10__ {scalar_t__ pairwise_suite; TYPE_3__ mic_failure; TYPE_4__* key; scalar_t__ rsn_enabled; } ;
struct TYPE_7__ {int /*<<< orphan*/  status; } ;
struct ks_wlan_private {int connect_status; TYPE_5__ wpa; int /*<<< orphan*/  net_dev; int /*<<< orphan*/ * eth_addr; TYPE_2__ psstatus; } ;
struct ieee802_1x_hdr {scalar_t__ type; } ;
struct TYPE_6__ {void* event; void* size; } ;
struct hostif_data_request {TYPE_1__ header; void* auth_type; int /*<<< orphan*/ * data; } ;
struct ethhdr {unsigned short h_source; } ;
struct ether_hdr {int /*<<< orphan*/  h_proto; } ;
typedef  int /*<<< orphan*/  mic ;
struct TYPE_9__ {scalar_t__ key_len; int /*<<< orphan*/  tx_mic_key; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int EOVERFLOW ; 
 int ETH_ALEN ; 
 unsigned int ETH_FRAME_LEN ; 
 unsigned short ETH_P_PAE ; 
 int FORCE_DISCONNECT ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int HIF_DATA_REQ ; 
 scalar_t__ IEEE802_1X_TYPE_EAPOL_KEY ; 
 scalar_t__ IW_AUTH_CIPHER_CCMP ; 
 scalar_t__ IW_AUTH_CIPHER_TKIP ; 
 int MICHAEL_MIC_LEN ; 
 scalar_t__ PS_SNOOZE ; 
 int /*<<< orphan*/  SME_MIC_FAILURE_REQUEST ; 
 int TYPE_AUTH ; 
 int TYPE_DATA ; 
 unsigned short WPA_KEY_INFO_ERROR ; 
 unsigned short WPA_KEY_INFO_REQUEST ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned short) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct ks_wlan_private*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct hostif_data_request*) ; 
 struct hostif_data_request* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct ks_wlan_private*,struct hostif_data_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*,unsigned char*,int) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,unsigned short) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 unsigned short FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  send_packet_complete ; 

int FUNC17(struct ks_wlan_private *priv, struct sk_buff *skb)
{
	unsigned int skb_len = 0;
	unsigned char *buffer = NULL;
	unsigned int length = 0;
	struct hostif_data_request *pp;
	unsigned char *p;
	unsigned short eth_proto;
	struct ether_hdr *eth_hdr;
	unsigned short keyinfo = 0;
	struct ieee802_1x_hdr *aa1x_hdr;
	struct wpa_eapol_key *eap_key;
	struct ethhdr *eth;
	size_t size;
	int ret;

	skb_len = skb->len;
	if (skb_len > ETH_FRAME_LEN) {
		FUNC12(priv->net_dev, "bad length skb_len=%d\n", skb_len);
		ret = -EOVERFLOW;
		goto err_kfree_skb;
	}

	if (FUNC6(priv->connect_status) ||
	    (priv->connect_status & FORCE_DISCONNECT) ||
	    priv->wpa.mic_failure.stop) {
		if (FUNC13(priv->net_dev))
			FUNC15(priv->net_dev);

		FUNC2(skb);

		return 0;
	}

	/* power save wakeup */
	if (FUNC0(&priv->psstatus.status) == PS_SNOOZE) {
		if (!FUNC13(priv->net_dev))
			FUNC14(priv->net_dev);
	}

	size = sizeof(*pp) + 6 + skb_len + 8;
	pp = FUNC8(FUNC4(size), GFP_ATOMIC);
	if (!pp) {
		ret = -ENOMEM;
		goto err_kfree_skb;
	}

	p = (unsigned char *)pp->data;

	buffer = skb->data;
	length = skb->len;

	/* skb check */
	eth = (struct ethhdr *)skb->data;
	if (!FUNC3(&priv->eth_addr[0], eth->h_source)) {
		FUNC12(priv->net_dev,
			   "Invalid mac address: ethernet->h_source=%pM\n",
			   eth->h_source);
		ret = -ENXIO;
		goto err_kfree;
	}

	/* dest and src MAC address copy */
	size = ETH_ALEN * 2;
	FUNC10(p, buffer, size);
	p += size;
	buffer += size;
	length -= size;

	/* EtherType/Length check */
	if (*(buffer + 1) + (*buffer << 8) > 1500) {
		/* ProtocolEAP = *(buffer+1) + (*buffer << 8); */
		/* SAP/CTL/OUI(6 byte) add */
		*p++ = 0xAA;	/* DSAP */
		*p++ = 0xAA;	/* SSAP */
		*p++ = 0x03;	/* CTL */
		*p++ = 0x00;	/* OUI ("000000") */
		*p++ = 0x00;	/* OUI ("000000") */
		*p++ = 0x00;	/* OUI ("000000") */
		skb_len += 6;
	} else {
		/* Length(2 byte) delete */
		buffer += 2;
		length -= 2;
		skb_len -= 2;
	}

	/* pp->data copy */
	FUNC10(p, buffer, length);

	p += length;

	/* for WPA */
	eth_hdr = (struct ether_hdr *)&pp->data[0];
	eth_proto = FUNC16(eth_hdr->h_proto);

	/* for MIC FAILURE REPORT check */
	if (eth_proto == ETH_P_PAE &&
	    priv->wpa.mic_failure.failure > 0) {
		aa1x_hdr = (struct ieee802_1x_hdr *)(eth_hdr + 1);
		if (aa1x_hdr->type == IEEE802_1X_TYPE_EAPOL_KEY) {
			eap_key = (struct wpa_eapol_key *)(aa1x_hdr + 1);
			keyinfo = FUNC16(eap_key->key_info);
		}
	}

	if (priv->wpa.rsn_enabled && priv->wpa.key[0].key_len) {
		/* no encryption */
		if (eth_proto == ETH_P_PAE &&
		    priv->wpa.key[1].key_len == 0 &&
		    priv->wpa.key[2].key_len == 0 &&
		    priv->wpa.key[3].key_len == 0) {
			pp->auth_type = FUNC1(TYPE_AUTH);
		} else {
			if (priv->wpa.pairwise_suite == IW_AUTH_CIPHER_TKIP) {
				u8 mic[MICHAEL_MIC_LEN];

				ret = FUNC11(priv->wpa.key[0].tx_mic_key,
						  &pp->data[0], skb_len,
						  0, mic);
				if (ret < 0)
					goto err_kfree;

				FUNC10(p, mic, sizeof(mic));
				length += sizeof(mic);
				skb_len += sizeof(mic);
				p += sizeof(mic);
				pp->auth_type =
				    FUNC1(TYPE_DATA);
			} else if (priv->wpa.pairwise_suite ==
				   IW_AUTH_CIPHER_CCMP) {
				pp->auth_type =
				    FUNC1(TYPE_DATA);
			}
		}
	} else {
		if (eth_proto == ETH_P_PAE)
			pp->auth_type = FUNC1(TYPE_AUTH);
		else
			pp->auth_type = FUNC1(TYPE_DATA);
	}

	/* header value set */
	pp->header.size =
	    FUNC1((sizeof(*pp) - sizeof(pp->header.size) + skb_len));
	pp->header.event = FUNC1(HIF_DATA_REQ);

	/* tx request */
	ret = FUNC9(priv, pp, FUNC4(sizeof(*pp) + skb_len),
			    send_packet_complete, skb);

	/* MIC FAILURE REPORT check */
	if (eth_proto == ETH_P_PAE &&
	    priv->wpa.mic_failure.failure > 0) {
		if (keyinfo & WPA_KEY_INFO_ERROR &&
		    keyinfo & WPA_KEY_INFO_REQUEST) {
			FUNC12(priv->net_dev,
				   "MIC ERROR Report SET : %04X\n", keyinfo);
			FUNC5(priv, SME_MIC_FAILURE_REQUEST);
		}
		if (priv->wpa.mic_failure.failure == 2)
			priv->wpa.mic_failure.stop = 1;
	}

	return ret;

err_kfree:
	FUNC7(pp);
err_kfree_skb:
	FUNC2(skb);

	return ret;
}