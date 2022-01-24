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
typedef  int /*<<< orphan*/  u32 ;
struct r8192_priv {int ReceiveConfig; struct ieee80211_device* ieee80211; } ;
struct net_device {int dummy; } ;
struct ieee80211_device {scalar_t__ state; scalar_t__ pairwise_key_type; scalar_t__ iw_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 scalar_t__ IEEE80211_LINKED ; 
 scalar_t__ IW_MODE_ADHOC ; 
 scalar_t__ IW_MODE_INFRA ; 
 scalar_t__ KEY_TYPE_WEP104 ; 
 scalar_t__ KEY_TYPE_WEP40 ; 
 int /*<<< orphan*/  RCR ; 
 int /*<<< orphan*/  RCR_CBSSID ; 
 struct r8192_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct net_device *dev)
{
	struct r8192_priv *priv = FUNC1(dev);
	struct ieee80211_device *ieee = priv->ieee80211;

	if (ieee->state == IEEE80211_LINKED) {
		FUNC3(dev);
		FUNC4(dev);
		/* Add this as in pure N mode, wep encryption will use software
		 * way, but there is no chance to set this as wep will not set
		 * group key in wext.
		 */
		if (ieee->pairwise_key_type == KEY_TYPE_WEP40 ||
		    ieee->pairwise_key_type == KEY_TYPE_WEP104)
			FUNC0(dev);
	}
	/*update timing params*/
	if (ieee->iw_mode == IW_MODE_INFRA || ieee->iw_mode == IW_MODE_ADHOC) {
		u32 reg = 0;

		FUNC2(dev, RCR, &reg);
		if (priv->ieee80211->state == IEEE80211_LINKED)
			priv->ReceiveConfig = reg |= RCR_CBSSID;
		else
			priv->ReceiveConfig = reg &= ~RCR_CBSSID;
		FUNC5(dev, RCR, reg);
	}
}