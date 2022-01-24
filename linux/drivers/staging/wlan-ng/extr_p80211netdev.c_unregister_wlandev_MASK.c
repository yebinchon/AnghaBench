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
struct wlandevice {int /*<<< orphan*/  nsd_rxq; int /*<<< orphan*/  netdev; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(struct wlandevice *wlandev)
{
	struct sk_buff *skb;

	FUNC2(wlandev->netdev);

	/* Now to clean out the rx queue */
	while ((skb = FUNC1(&wlandev->nsd_rxq)))
		FUNC0(skb);

	return 0;
}