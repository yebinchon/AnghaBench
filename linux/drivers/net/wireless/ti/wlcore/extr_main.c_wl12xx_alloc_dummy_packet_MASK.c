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
struct wl1271_tx_hw_descr {int dummy; } ;
struct wl1271 {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  priority; } ;
struct ieee80211_tx_info {int dummy; } ;
struct ieee80211_hdr_3addr {int /*<<< orphan*/  frame_control; } ;

/* Variables and functions */
 int IEEE80211_FCTL_TODS ; 
 int IEEE80211_FTYPE_DATA ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int IEEE80211_STYPE_NULLFUNC ; 
 int TOTAL_TX_DUMMY_PACKET_SIZE ; 
 int /*<<< orphan*/  WL1271_TID_MGMT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct sk_buff* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct ieee80211_hdr_3addr* FUNC4 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static struct sk_buff *FUNC8(struct wl1271 *wl)
{
	struct sk_buff *skb;
	struct ieee80211_hdr_3addr *hdr;
	unsigned int dummy_packet_size;

	dummy_packet_size = TOTAL_TX_DUMMY_PACKET_SIZE -
			    sizeof(struct wl1271_tx_hw_descr) - sizeof(*hdr);

	skb = FUNC2(TOTAL_TX_DUMMY_PACKET_SIZE);
	if (!skb) {
		FUNC7("Failed to allocate a dummy packet skb");
		return NULL;
	}

	FUNC5(skb, sizeof(struct wl1271_tx_hw_descr));

	hdr = FUNC4(skb, sizeof(*hdr));
	hdr->frame_control = FUNC1(IEEE80211_FTYPE_DATA |
					 IEEE80211_STYPE_NULLFUNC |
					 IEEE80211_FCTL_TODS);

	FUNC4(skb, dummy_packet_size);

	/* Dummy packets require the TID to be management */
	skb->priority = WL1271_TID_MGMT;

	/* Initialize all fields that might be used */
	FUNC6(skb, 0);
	FUNC3(FUNC0(skb), 0, sizeof(struct ieee80211_tx_info));

	return skb;
}