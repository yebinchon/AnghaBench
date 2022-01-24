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
typedef  size_t u8 ;
typedef  scalar_t__ u32 ;
struct sk_buff {struct sk_buff* next; int /*<<< orphan*/  len; scalar_t__ data; } ;
struct rsi_hw {int /*<<< orphan*/  hw; } ;
struct rsi_common {int /*<<< orphan*/ * tx_queue; int /*<<< orphan*/  band; TYPE_1__* tx_qinfo; struct rsi_hw* priv; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_rate {int bitrate; } ;
struct ieee80211_hdr {int /*<<< orphan*/  addr2; } ;
typedef  int s16 ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_2__ {int txop; } ;

/* Variables and functions */
 int RSI_RATE_MCS0 ; 
 size_t VI_Q ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ieee80211_vif*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ieee80211_rate*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct ieee80211_vif* FUNC2 (struct rsi_hw*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static u32 FUNC5(struct rsi_common *common, u8 q_num)
{
	struct rsi_hw *adapter = common->priv;
	struct sk_buff *skb;
	u32 pkt_cnt = 0;
	s16 txop = common->tx_qinfo[q_num].txop * 32;
	__le16 r_txop;
	struct ieee80211_rate rate;
	struct ieee80211_hdr *wh;
	struct ieee80211_vif *vif;

	rate.bitrate = RSI_RATE_MCS0 * 5 * 10; /* Convert to Kbps */
	if (q_num == VI_Q)
		txop = ((txop << 5) / 80);

	if (FUNC4(&common->tx_queue[q_num]))
		skb = FUNC3(&common->tx_queue[q_num]);
	else
		return 0;

	do {
		wh = (struct ieee80211_hdr *)skb->data;
		vif = FUNC2(adapter, wh->addr2);
		r_txop = FUNC0(adapter->hw,
							  vif,
							  common->band,
							  skb->len, &rate);
		txop -= FUNC1(r_txop);
		pkt_cnt += 1;
		/*checking if pkts are still there*/
		if (FUNC4(&common->tx_queue[q_num]) - pkt_cnt)
			skb = skb->next;
		else
			break;

	} while (txop > 0);

	return pkt_cnt;
}