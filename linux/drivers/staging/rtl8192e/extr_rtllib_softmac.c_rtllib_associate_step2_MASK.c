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
struct sk_buff {int dummy; } ;
struct rtllib_network {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_ass_rq; } ;
struct rtllib_device {int /*<<< orphan*/  associate_timer; TYPE_1__ softmac_stats; int /*<<< orphan*/  dev; struct rtllib_network current_network; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtllib_device*) ; 
 struct sk_buff* FUNC4 (struct rtllib_network*,struct rtllib_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct rtllib_device*) ; 

__attribute__((used)) static void FUNC6(struct rtllib_device *ieee)
{
	struct sk_buff *skb;
	struct rtllib_network *beacon = &ieee->current_network;

	FUNC0(&ieee->associate_timer);

	FUNC2(ieee->dev, "Sending association request\n");

	ieee->softmac_stats.tx_ass_rq++;
	skb = FUNC4(beacon, ieee);
	if (!skb)
		FUNC3(ieee);
	else {
		FUNC5(skb, ieee);
		FUNC1(&ieee->associate_timer, jiffies + (HZ/2));
	}
}