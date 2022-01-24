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
struct rtllib_network {int /*<<< orphan*/  bssid; } ;
struct rtllib_hdr_3addr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_auth_rq; } ;
struct rtllib_device {int /*<<< orphan*/  associate_timer; int /*<<< orphan*/  dev; TYPE_1__ softmac_stats; int /*<<< orphan*/  associate_seq; struct rtllib_network current_network; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  MFIE_TYPE_CHALLENGE ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtllib_device*) ; 
 struct sk_buff* FUNC5 (struct rtllib_network*,struct rtllib_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rtllib_device*,struct sk_buff*,int) ; 
 int /*<<< orphan*/ * FUNC7 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,struct rtllib_device*) ; 

__attribute__((used)) static void FUNC9(struct rtllib_device *ieee, u8 *challenge,
				  int chlen)
{
	u8 *c;
	struct sk_buff *skb;
	struct rtllib_network *beacon = &ieee->current_network;

	ieee->associate_seq++;
	ieee->softmac_stats.tx_auth_rq++;

	skb = FUNC5(beacon, ieee, chlen + 2, beacon->bssid);

	if (!skb)
		FUNC4(ieee);
	else {
		c = FUNC7(skb, chlen+2);
		*(c++) = MFIE_TYPE_CHALLENGE;
		*(c++) = chlen;
		FUNC1(c, challenge, chlen);

		FUNC3(ieee->dev,
			   "Sending authentication challenge response\n");

		FUNC6(ieee, skb,
					sizeof(struct rtllib_hdr_3addr));

		FUNC8(skb, ieee);
		FUNC2(&ieee->associate_timer, jiffies + (HZ/2));
	}
	FUNC0(challenge);
}