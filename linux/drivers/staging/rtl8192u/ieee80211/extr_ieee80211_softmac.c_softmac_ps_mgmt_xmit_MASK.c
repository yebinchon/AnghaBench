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
struct sk_buff {scalar_t__ data; } ;
struct rtl_80211_hdr_3addr {void* seq_ctl; } ;
struct ieee80211_device {short softmac_features; int* seq_ctrl; int /*<<< orphan*/  dev; int /*<<< orphan*/  (* softmac_hard_start_xmit ) (struct sk_buff*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  basic_rate; int /*<<< orphan*/  (* softmac_data_hard_start_xmit ) (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 short IEEE_SOFTMAC_SINGLE_QUEUE ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC4(struct sk_buff *skb, struct ieee80211_device *ieee)
{
	short single = ieee->softmac_features & IEEE_SOFTMAC_SINGLE_QUEUE;
	struct rtl_80211_hdr_3addr  *header =
		(struct rtl_80211_hdr_3addr  *)skb->data;

	if (single) {
		header->seq_ctl = FUNC0(ieee->seq_ctrl[0] << 4);

		if (ieee->seq_ctrl[0] == 0xFFF)
			ieee->seq_ctrl[0] = 0;
		else
			ieee->seq_ctrl[0]++;

		/* avoid watchdog triggers */
		FUNC1(ieee->dev);
		ieee->softmac_data_hard_start_xmit(skb, ieee->dev, ieee->basic_rate);
	} else {
		header->seq_ctl = FUNC0(ieee->seq_ctrl[0] << 4);

		if (ieee->seq_ctrl[0] == 0xFFF)
			ieee->seq_ctrl[0] = 0;
		else
			ieee->seq_ctrl[0]++;

		ieee->softmac_hard_start_xmit(skb, ieee->dev);
	}
	//dev_kfree_skb_any(skb);//edit by thomas
}