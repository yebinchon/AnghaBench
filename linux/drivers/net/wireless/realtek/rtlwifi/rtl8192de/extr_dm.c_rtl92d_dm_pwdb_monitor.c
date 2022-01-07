
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_4__ {int undec_sm_pwdb; scalar_t__ useramask; } ;
struct TYPE_3__ {scalar_t__ opmode; } ;
struct rtl_priv {TYPE_2__ dm; TYPE_1__ mac80211; } ;
struct ieee80211_hw {int dummy; } ;


 int H2C_RSSI_REPORT ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int rtl92d_fill_h2c_cmd (struct ieee80211_hw*,int ,int,int *) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_write_byte (struct rtl_priv*,int,int ) ;

__attribute__((used)) static void rtl92d_dm_pwdb_monitor(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);


 if (rtlpriv->mac80211.opmode != NL80211_IFTYPE_STATION)
  return;

 if (rtlpriv->dm.useramask) {
  u32 temp = rtlpriv->dm.undec_sm_pwdb;

  temp <<= 16;
  temp |= 0x100;


  rtl92d_fill_h2c_cmd(hw, H2C_RSSI_REPORT, 3, (u8 *) (&temp));
 } else {
  rtl_write_byte(rtlpriv, 0x4fe,
          (u8) rtlpriv->dm.undec_sm_pwdb);
 }
}
