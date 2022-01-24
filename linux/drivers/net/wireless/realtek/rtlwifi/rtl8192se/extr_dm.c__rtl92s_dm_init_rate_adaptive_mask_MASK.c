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
struct TYPE_2__ {scalar_t__ dm_type; int useramask; int inform_fw_driverctrldm; } ;
struct rate_adaptive {void* pre_ratr_state; void* ratr_state; } ;
struct rtl_priv {TYPE_1__ dm; struct rate_adaptive ra; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 void* DM_RATR_STA_MAX ; 
 scalar_t__ DM_TYPE_BYDRIVER ; 
 int FUNC0 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC1 (struct ieee80211_hw*) ; 

__attribute__((used)) static void FUNC2(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC1(hw);
	struct rate_adaptive *ra = &(rtlpriv->ra);

	ra->ratr_state = DM_RATR_STA_MAX;
	ra->pre_ratr_state = DM_RATR_STA_MAX;

	if (rtlpriv->dm.dm_type == DM_TYPE_BYDRIVER &&
	    FUNC0(rtlpriv) >= 60)
		rtlpriv->dm.useramask = true;
	else
		rtlpriv->dm.useramask = false;

	rtlpriv->dm.useramask = false;
	rtlpriv->dm.inform_fw_driverctrldm = false;
}