#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct vnt_private {int byPreambleType; int bShortSlotTime; scalar_t__ op_mode; scalar_t__ PortOffset; TYPE_3__* pcid; int /*<<< orphan*/  wCurrentRate; int /*<<< orphan*/ * abyBBVGA; int /*<<< orphan*/  byBBType; int /*<<< orphan*/  basic_rates; int /*<<< orphan*/  lock; int /*<<< orphan*/  current_aid; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct vnt_private* priv; } ;
struct TYPE_6__ {TYPE_1__* chan; } ;
struct ieee80211_bss_conf {int /*<<< orphan*/  beacon_int; int /*<<< orphan*/  sync_tsf; TYPE_4__* beacon_rate; scalar_t__ assoc; int /*<<< orphan*/  enable_beacon; TYPE_2__ chandef; scalar_t__ use_short_slot; scalar_t__ use_cts_prot; scalar_t__ use_short_preamble; int /*<<< orphan*/  basic_rates; scalar_t__ bssid; int /*<<< orphan*/  aid; } ;
struct TYPE_8__ {int /*<<< orphan*/  hw_value; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  hw_value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnt_private*,int /*<<< orphan*/ ) ; 
 int BSS_CHANGED_ASSOC ; 
 int BSS_CHANGED_BASIC_RATES ; 
 int BSS_CHANGED_BEACON_ENABLED ; 
 int BSS_CHANGED_BEACON_INFO ; 
 int BSS_CHANGED_BSSID ; 
 int BSS_CHANGED_ERP_CTS_PROT ; 
 int BSS_CHANGED_ERP_PREAMBLE ; 
 int BSS_CHANGED_ERP_SLOT ; 
 int BSS_CHANGED_TXPOWER ; 
 int /*<<< orphan*/  FUNC1 (struct vnt_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vnt_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vnt_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vnt_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct vnt_private*) ; 
 int /*<<< orphan*/  MAC_REG_TCR ; 
 scalar_t__ MAC_REG_TFTCTL ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ NL80211_IFTYPE_AP ; 
 int /*<<< orphan*/  FUNC13 (struct vnt_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TCR_AUTOBCNTX ; 
 int /*<<< orphan*/  TFTCTL_TSFCNTREN ; 
 int /*<<< orphan*/  TFTCTL_TSFCNTRST ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC18 (struct vnt_private*,struct ieee80211_vif*,struct ieee80211_bss_conf*) ; 

__attribute__((used)) static void FUNC19(struct ieee80211_hw *hw,
				 struct ieee80211_vif *vif,
				 struct ieee80211_bss_conf *conf, u32 changed)
{
	struct vnt_private *priv = hw->priv;

	priv->current_aid = conf->aid;

	if (changed & BSS_CHANGED_BSSID && conf->bssid) {
		unsigned long flags;

		FUNC16(&priv->lock, flags);

		FUNC12(priv->PortOffset, (u8 *)conf->bssid);

		FUNC17(&priv->lock, flags);
	}

	if (changed & BSS_CHANGED_BASIC_RATES) {
		priv->basic_rates = conf->basic_rates;

		FUNC5(priv);

		FUNC15(&priv->pcid->dev,
			"basic rates %x\n", conf->basic_rates);
	}

	if (changed & BSS_CHANGED_ERP_PREAMBLE) {
		if (conf->use_short_preamble) {
			FUNC8(priv->PortOffset);
			priv->byPreambleType = true;
		} else {
			FUNC6(priv->PortOffset);
			priv->byPreambleType = false;
		}
	}

	if (changed & BSS_CHANGED_ERP_CTS_PROT) {
		if (conf->use_cts_prot)
			FUNC9(priv->PortOffset);
		else
			FUNC7(priv->PortOffset);
	}

	if (changed & BSS_CHANGED_ERP_SLOT) {
		if (conf->use_short_slot)
			priv->bShortSlotTime = true;
		else
			priv->bShortSlotTime = false;

		FUNC2(priv, priv->byBBType);
		FUNC0(priv, priv->abyBBVGA[0]);
	}

	if (changed & BSS_CHANGED_TXPOWER)
		FUNC13(priv, priv->wCurrentRate,
			    conf->chandef.chan->hw_value);

	if (changed & BSS_CHANGED_BEACON_ENABLED) {
		FUNC15(&priv->pcid->dev,
			"Beacon enable %d\n", conf->enable_beacon);

		if (conf->enable_beacon) {
			FUNC18(priv, vif, conf);

			FUNC11(priv->PortOffset, MAC_REG_TCR,
				      TCR_AUTOBCNTX);
		} else {
			FUNC10(priv->PortOffset, MAC_REG_TCR,
				       TCR_AUTOBCNTX);
		}
	}

	if (changed & (BSS_CHANGED_ASSOC | BSS_CHANGED_BEACON_INFO) &&
	    priv->op_mode != NL80211_IFTYPE_AP) {
		if (conf->assoc && conf->beacon_rate) {
			FUNC3(priv, conf->beacon_rate->hw_value,
				       conf->sync_tsf);

			FUNC1(priv, conf->beacon_int);

			FUNC4(priv, conf->beacon_int);
		} else {
			FUNC14(priv->PortOffset + MAC_REG_TFTCTL,
				     TFTCTL_TSFCNTRST);
			FUNC14(priv->PortOffset + MAC_REG_TFTCTL,
				     TFTCTL_TSFCNTREN);
		}
	}
}