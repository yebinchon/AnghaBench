
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int inform_fw_driverctrldm; long undec_sm_pwdb; int useramask; } ;
struct rate_adaptive {int pre_ratr_state; int ratr_state; } ;
struct rtl_priv {TYPE_3__* cfg; TYPE_1__ dm; struct rate_adaptive ra; } ;
struct rtl_mac {scalar_t__ link_state; scalar_t__ opmode; int bssid; } ;
struct rtl_hal {int dummy; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_6__ {TYPE_2__* ops; } ;
struct TYPE_5__ {int (* update_rate_tbl ) (struct ieee80211_hw*,struct ieee80211_sta*,int,int) ;} ;


 int COMP_RATE ;
 int DBG_LOUD ;




 int FW_CMD_CTRL_DM_BY_DRIVER ;
 scalar_t__ MAC80211_LINKED ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,long,int,int,int) ;
 int hal_get_firmwareversion (struct rtl_priv*) ;
 scalar_t__ is_hal_stop (struct rtl_hal*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int rtl92s_phy_set_fw_cmd (struct ieee80211_hw*,int ) ;
 struct ieee80211_sta* rtl_find_sta (struct ieee80211_hw*,int ) ;
 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 struct rtl_mac* rtl_mac (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int stub1 (struct ieee80211_hw*,struct ieee80211_sta*,int,int) ;

__attribute__((used)) static void _rtl92s_dm_refresh_rateadaptive_mask(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));
 struct rtl_mac *mac = rtl_mac(rtl_priv(hw));
 struct rate_adaptive *ra = &(rtlpriv->ra);
 struct ieee80211_sta *sta = ((void*)0);
 u32 low_rssi_thresh = 0;
 u32 middle_rssi_thresh = 0;
 u32 high_rssi_thresh = 0;

 if (is_hal_stop(rtlhal))
  return;

 if (!rtlpriv->dm.useramask)
  return;

 if (hal_get_firmwareversion(rtlpriv) >= 61 &&
     !rtlpriv->dm.inform_fw_driverctrldm) {
  rtl92s_phy_set_fw_cmd(hw, FW_CMD_CTRL_DM_BY_DRIVER);
  rtlpriv->dm.inform_fw_driverctrldm = 1;
 }

 if ((mac->link_state == MAC80211_LINKED) &&
     (mac->opmode == NL80211_IFTYPE_STATION)) {
  switch (ra->pre_ratr_state) {
  case 131:
   high_rssi_thresh = 40;
   middle_rssi_thresh = 30;
   low_rssi_thresh = 20;
   break;
  case 129:
   high_rssi_thresh = 44;
   middle_rssi_thresh = 30;
   low_rssi_thresh = 20;
   break;
  case 130:
   high_rssi_thresh = 44;
   middle_rssi_thresh = 34;
   low_rssi_thresh = 20;
   break;
  case 128:
   high_rssi_thresh = 44;
   middle_rssi_thresh = 34;
   low_rssi_thresh = 24;
   break;
  default:
   high_rssi_thresh = 44;
   middle_rssi_thresh = 34;
   low_rssi_thresh = 24;
   break;
  }

  if (rtlpriv->dm.undec_sm_pwdb > (long)high_rssi_thresh) {
   ra->ratr_state = 131;
  } else if (rtlpriv->dm.undec_sm_pwdb >
      (long)middle_rssi_thresh) {
   ra->ratr_state = 130;
  } else if (rtlpriv->dm.undec_sm_pwdb >
      (long)low_rssi_thresh) {
   ra->ratr_state = 130;
  } else {
   ra->ratr_state = 128;
  }

  if (ra->pre_ratr_state != ra->ratr_state) {
   RT_TRACE(rtlpriv, COMP_RATE, DBG_LOUD,
     "RSSI = %ld RSSI_LEVEL = %d PreState = %d, CurState = %d\n",
     rtlpriv->dm.undec_sm_pwdb, ra->ratr_state,
     ra->pre_ratr_state, ra->ratr_state);

   rcu_read_lock();
   sta = rtl_find_sta(hw, mac->bssid);
   if (sta)
    rtlpriv->cfg->ops->update_rate_tbl(hw, sta,
          ra->ratr_state,
          1);
   rcu_read_unlock();

   ra->pre_ratr_state = ra->ratr_state;
  }
 }
}
