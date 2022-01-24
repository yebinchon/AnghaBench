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
struct net_device {int dummy; } ;
struct ks_wlan_private {scalar_t__ dev_state; } ;

/* Variables and functions */
 scalar_t__ DEVICE_STATE_READY ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct ks_wlan_private*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*,...) ; 
 struct ks_wlan_private* FUNC5 (struct net_device*) ; 
 scalar_t__ FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 

__attribute__((used)) static
int FUNC9(struct sk_buff *skb, struct net_device *dev)
{
	struct ks_wlan_private *priv = FUNC5(dev);
	int ret;

	FUNC3(dev, "in_interrupt()=%ld\n", FUNC2());

	if (!skb) {
		FUNC4(dev, "ks_wlan:  skb == NULL!!!\n");
		return 0;
	}
	if (priv->dev_state < DEVICE_STATE_READY) {
		FUNC0(skb);
		return 0;	/* not finished initialize */
	}

	if (FUNC6(dev))
		FUNC7(dev);

	ret = FUNC1(priv, skb);
	FUNC8(dev);

	if (ret)
		FUNC4(dev, "hostif_data_request error: =%d\n", ret);

	return 0;
}