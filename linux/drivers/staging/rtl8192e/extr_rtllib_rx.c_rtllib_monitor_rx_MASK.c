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
struct sk_buff {int /*<<< orphan*/  cb; int /*<<< orphan*/  protocol; int /*<<< orphan*/  pkt_type; int /*<<< orphan*/  dev; } ;
struct rtllib_rx_stats {int dummy; } ;
struct rtllib_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_80211_RAW ; 
 int /*<<< orphan*/  PACKET_OTHERHOST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 

__attribute__((used)) static inline void FUNC5(struct rtllib_device *ieee,
				     struct sk_buff *skb,
				     struct rtllib_rx_stats *rx_status,
				     size_t hdr_length)
{
	skb->dev = ieee->dev;
	FUNC4(skb);
	FUNC3(skb, hdr_length);
	skb->pkt_type = PACKET_OTHERHOST;
	skb->protocol = FUNC0(ETH_P_80211_RAW);
	FUNC1(skb->cb, 0, sizeof(skb->cb));
	FUNC2(skb);
}