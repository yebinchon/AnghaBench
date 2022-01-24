#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct TYPE_4__ {scalar_t__ beacon_interval; } ;
struct TYPE_3__ {int /*<<< orphan*/  tx_beacons; } ;
struct rtllib_device {TYPE_2__ current_network; int /*<<< orphan*/  beacon_timer; scalar_t__ ieee_up; scalar_t__ beacon_txing; TYPE_1__ softmac_stats; } ;

/* Variables and functions */
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 struct sk_buff* FUNC2 (struct rtllib_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct rtllib_device*) ; 

__attribute__((used)) static void FUNC4(struct rtllib_device *ieee)
{
	struct sk_buff *skb;

	if (!ieee->ieee_up)
		return;
	skb = FUNC2(ieee);

	if (skb) {
		FUNC3(skb, ieee);
		ieee->softmac_stats.tx_beacons++;
	}

	if (ieee->beacon_txing && ieee->ieee_up)
		FUNC0(&ieee->beacon_timer, jiffies +
			  (FUNC1(ieee->current_network.beacon_interval - 5)));
}