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
struct vnt_private {scalar_t__ PortOffset; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_bss_conf {int /*<<< orphan*/  beacon_int; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnt_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vnt_private*,int /*<<< orphan*/ ) ; 
 scalar_t__ MAC_REG_TFTCTL ; 
 int /*<<< orphan*/  TFTCTL_TSFCNTREN ; 
 int /*<<< orphan*/  TFTCTL_TSFCNTRST ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct vnt_private*,struct ieee80211_vif*) ; 

int FUNC4(struct vnt_private *priv, struct ieee80211_vif *vif,
		      struct ieee80211_bss_conf *conf)
{
	FUNC2(priv->PortOffset + MAC_REG_TFTCTL, TFTCTL_TSFCNTRST);

	FUNC2(priv->PortOffset + MAC_REG_TFTCTL, TFTCTL_TSFCNTREN);

	FUNC1(priv, conf->beacon_int);

	FUNC0(priv, conf->beacon_int);

	return FUNC3(priv, vif);
}