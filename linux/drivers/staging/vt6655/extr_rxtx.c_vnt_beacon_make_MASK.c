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
struct vnt_private {int /*<<< orphan*/  hw; } ;
struct sk_buff {int dummy; } ;
struct ieee80211_vif {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 scalar_t__ FUNC2 (struct vnt_private*,struct sk_buff*) ; 

int FUNC3(struct vnt_private *priv, struct ieee80211_vif *vif)
{
	struct sk_buff *beacon;

	beacon = FUNC0(priv->hw, vif);
	if (!beacon)
		return -ENOMEM;

	if (FUNC2(priv, beacon)) {
		FUNC1(priv->hw, beacon);
		return -ENODEV;
	}

	return 0;
}