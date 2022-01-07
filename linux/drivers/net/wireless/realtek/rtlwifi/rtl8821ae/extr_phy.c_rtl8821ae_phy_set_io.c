
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int opmode; } ;
struct TYPE_4__ {int xaagccore1; int cca; } ;
struct rtl_phy {int current_io_type; int set_io_inprogress; TYPE_2__ initgain_backup; } ;
struct dig_t {int cur_igvalue; int cur_cck_cca_thres; } ;
struct rtl_priv {TYPE_1__ mac80211; struct rtl_phy phy; struct dig_t dm_digtable; } ;
struct ieee80211_hw {int dummy; } ;


 int COMP_CMD ;
 int DBG_TRACE ;



 int NL80211_IFTYPE_ADHOC ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int,...) ;
 int _rtl8821ae_resume_tx_beacon (struct ieee80211_hw*) ;
 int _rtl8821ae_stop_tx_beacon (struct ieee80211_hw*) ;
 int pr_err (char*,int) ;
 int rtl8821ae_dm_write_cck_cca_thres (struct ieee80211_hw*,int) ;
 int rtl8821ae_dm_write_dig (struct ieee80211_hw*,int) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static void rtl8821ae_phy_set_io(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct dig_t *dm_digtable = &rtlpriv->dm_digtable;
 struct rtl_phy *rtlphy = &rtlpriv->phy;

 RT_TRACE(rtlpriv, COMP_CMD, DBG_TRACE,
   "--->Cmd(%#x), set_io_inprogress(%d)\n",
    rtlphy->current_io_type, rtlphy->set_io_inprogress);
 switch (rtlphy->current_io_type) {
 case 128:
  if (rtlpriv->mac80211.opmode == NL80211_IFTYPE_ADHOC)
   _rtl8821ae_resume_tx_beacon(hw);
  rtl8821ae_dm_write_dig(hw, rtlphy->initgain_backup.xaagccore1);
  rtl8821ae_dm_write_cck_cca_thres(hw,
       rtlphy->initgain_backup.cca);
  break;
 case 130:
  if (rtlpriv->mac80211.opmode == NL80211_IFTYPE_ADHOC)
   _rtl8821ae_stop_tx_beacon(hw);
  rtlphy->initgain_backup.xaagccore1 = dm_digtable->cur_igvalue;
  rtl8821ae_dm_write_dig(hw, 0x17);
  rtlphy->initgain_backup.cca = dm_digtable->cur_cck_cca_thres;
  rtl8821ae_dm_write_cck_cca_thres(hw, 0x40);
  break;
 case 129:
  break;
 default:
  pr_err("switch case %#x not processed\n",
         rtlphy->current_io_type);
  break;
 }
 rtlphy->set_io_inprogress = 0;
 RT_TRACE(rtlpriv, COMP_CMD, DBG_TRACE,
   "(%#x)\n", rtlphy->current_io_type);
}
