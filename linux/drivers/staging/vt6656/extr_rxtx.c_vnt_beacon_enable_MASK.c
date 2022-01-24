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
struct vnt_private {int dummy; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_bss_conf {int /*<<< orphan*/  beacon_int; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAC_REG_TCR ; 
 int /*<<< orphan*/  MAC_REG_TFTCTL ; 
 int /*<<< orphan*/  TCR_AUTOBCNTX ; 
 int /*<<< orphan*/  TFTCTL_TSFCNTREN ; 
 int FUNC0 (struct vnt_private*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC1 (struct vnt_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct vnt_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vnt_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vnt_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct vnt_private*,int /*<<< orphan*/ ) ; 

int FUNC6(struct vnt_private *priv, struct ieee80211_vif *vif,
		      struct ieee80211_bss_conf *conf)
{
	FUNC2(priv, MAC_REG_TCR, TCR_AUTOBCNTX);

	FUNC2(priv, MAC_REG_TFTCTL, TFTCTL_TSFCNTREN);

	FUNC4(priv, conf->beacon_int);

	FUNC1(priv);

	FUNC3(priv, MAC_REG_TFTCTL, TFTCTL_TSFCNTREN);

	FUNC5(priv, conf->beacon_int);

	return FUNC0(priv, vif);
}