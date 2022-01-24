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
struct TYPE_2__ {int /*<<< orphan*/  tx_probe_rq; } ;
struct rtllib_device {TYPE_1__ softmac_stats; } ;

/* Variables and functions */
 struct sk_buff* FUNC0 (struct rtllib_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct rtllib_device*) ; 

__attribute__((used)) static void FUNC2(struct rtllib_device *ieee, u8 is_mesh)
{
	struct sk_buff *skb;

	skb = FUNC0(ieee);
	if (skb) {
		FUNC1(skb, ieee);
		ieee->softmac_stats.tx_probe_rq++;
	}
}