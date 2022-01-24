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
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int dummy; } ;
struct rtl_80211_hdr_3addr {int dummy; } ;
struct ieee80211_network {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_auth_rq; } ;
struct ieee80211_device {int /*<<< orphan*/  associate_timer; TYPE_1__ softmac_stats; int /*<<< orphan*/  associate_seq; struct ieee80211_network current_network; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  MFIE_TYPE_CHALLENGE ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_device*) ; 
 struct sk_buff* FUNC2 (struct ieee80211_network*,struct ieee80211_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_device*,struct sk_buff*,int) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC7 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,struct ieee80211_device*) ; 

__attribute__((used)) static void FUNC9(struct ieee80211_device *ieee,
				     u8 *challenge,
				     int chlen)
{
	u8 *c;
	struct sk_buff *skb;
	struct ieee80211_network *beacon = &ieee->current_network;
//	int hlen = sizeof(struct ieee80211_authentication);

	ieee->associate_seq++;
	ieee->softmac_stats.tx_auth_rq++;

	skb = FUNC2(beacon, ieee, chlen + 2);
	if (!skb) {
		FUNC1(ieee);
	} else {
		c = FUNC7(skb, chlen + 2);
		*(c++) = MFIE_TYPE_CHALLENGE;
		*(c++) = chlen;
		FUNC5(c, challenge, chlen);

		FUNC0("Sending authentication challenge response\n");

		FUNC3(ieee, skb, sizeof(struct rtl_80211_hdr_3addr));

		FUNC8(skb, ieee);
		FUNC6(&ieee->associate_timer, jiffies + (HZ / 2));
		//dev_kfree_skb_any(skb);//edit by thomas
	}
	FUNC4(challenge);
}