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
struct sk_buff {int dummy; } ;
struct rtllib_rx_stats {int dummy; } ;
struct rtllib_device {int softmac_features; scalar_t__ state; scalar_t__ iw_mode; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int IEEE_SOFTMAC_ASSOCIATE ; 
 scalar_t__ IW_MODE_INFRA ; 
 scalar_t__ IW_MODE_MASTER ; 
 scalar_t__ RTLLIB_ASSOCIATING_AUTHENTICATING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtllib_device*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtllib_device*,struct sk_buff*) ; 

__attribute__((used)) static inline int
FUNC3(struct rtllib_device *ieee, struct sk_buff *skb,
	       struct rtllib_rx_stats *rx_stats)
{

	if (ieee->softmac_features & IEEE_SOFTMAC_ASSOCIATE) {
		if (ieee->state == RTLLIB_ASSOCIATING_AUTHENTICATING &&
		    (ieee->iw_mode == IW_MODE_INFRA)) {
			FUNC0(ieee->dev,
				   "Received authentication response");
			FUNC1(ieee, skb);
		} else if (ieee->iw_mode == IW_MODE_MASTER) {
			FUNC2(ieee, skb);
		}
	}
	return 0;
}