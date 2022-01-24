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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct vnt_private {scalar_t__ byBBType; int /*<<< orphan*/  wCurrentRate; } ;
struct TYPE_3__ {TYPE_2__* chan; } ;
struct ieee80211_conf {int flags; TYPE_1__ chandef; int /*<<< orphan*/  listen_interval; } ;
struct ieee80211_hw {struct ieee80211_conf conf; struct vnt_private* priv; } ;
struct TYPE_4__ {scalar_t__ band; int /*<<< orphan*/  hw_value; } ;

/* Variables and functions */
 scalar_t__ BB_TYPE_11A ; 
 scalar_t__ BB_TYPE_11B ; 
 scalar_t__ BB_TYPE_11G ; 
 int /*<<< orphan*/  FUNC0 (struct vnt_private*,scalar_t__) ; 
 int IEEE80211_CONF_CHANGE_CHANNEL ; 
 int IEEE80211_CONF_CHANGE_POWER ; 
 int IEEE80211_CONF_CHANGE_PS ; 
 int IEEE80211_CONF_OFFCHANNEL ; 
 int IEEE80211_CONF_PS ; 
 scalar_t__ NL80211_BAND_5GHZ ; 
 int /*<<< orphan*/  FUNC1 (struct vnt_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct vnt_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RATE_1M ; 
 int /*<<< orphan*/  RATE_54M ; 
 int /*<<< orphan*/  FUNC3 (struct vnt_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vnt_private*,TYPE_2__*) ; 

__attribute__((used)) static int FUNC5(struct ieee80211_hw *hw, u32 changed)
{
	struct vnt_private *priv = hw->priv;
	struct ieee80211_conf *conf = &hw->conf;
	u8 bb_type;

	if (changed & IEEE80211_CONF_CHANGE_PS) {
		if (conf->flags & IEEE80211_CONF_PS)
			FUNC2(priv, conf->listen_interval);
		else
			FUNC1(priv);
	}

	if ((changed & IEEE80211_CONF_CHANGE_CHANNEL) ||
	    (conf->flags & IEEE80211_CONF_OFFCHANNEL)) {
		FUNC4(priv, conf->chandef.chan);

		if (conf->chandef.chan->band == NL80211_BAND_5GHZ)
			bb_type = BB_TYPE_11A;
		else
			bb_type = BB_TYPE_11G;

		if (priv->byBBType != bb_type) {
			priv->byBBType = bb_type;

			FUNC0(priv, priv->byBBType);
		}
	}

	if (changed & IEEE80211_CONF_CHANGE_POWER) {
		if (priv->byBBType == BB_TYPE_11B)
			priv->wCurrentRate = RATE_1M;
		else
			priv->wCurrentRate = RATE_54M;

		FUNC3(priv, priv->wCurrentRate,
			    conf->chandef.chan->hw_value);
	}

	return 0;
}