
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dig_t {int cur_igvalue; } ;
struct TYPE_2__ {int xaagccore1; } ;
struct rtl_phy {int current_io_type; int set_io_inprogress; TYPE_1__ initgain_backup; int current_channel; } ;
struct rtl_priv {struct dig_t dm_digtable; struct rtl_phy phy; } ;
struct ieee80211_hw {int dummy; } ;


 int COMP_CMD ;
 int COMP_ERR ;
 int DBG_LOUD ;
 int DBG_TRACE ;


 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int,...) ;
 int rtl8723e_dm_write_dig (struct ieee80211_hw*) ;
 int rtl8723e_phy_set_txpower_level (struct ieee80211_hw*,int ) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static void rtl8723e_phy_set_io(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_phy *rtlphy = &rtlpriv->phy;
 struct dig_t *dm_digtable = &rtlpriv->dm_digtable;

 RT_TRACE(rtlpriv, COMP_CMD, DBG_TRACE,
   "--->Cmd(%#x), set_io_inprogress(%d)\n",
    rtlphy->current_io_type, rtlphy->set_io_inprogress);
 switch (rtlphy->current_io_type) {
 case 128:
  dm_digtable->cur_igvalue = rtlphy->initgain_backup.xaagccore1;
  rtl8723e_dm_write_dig(hw);
  rtl8723e_phy_set_txpower_level(hw, rtlphy->current_channel);
  break;
 case 129:
  rtlphy->initgain_backup.xaagccore1 = dm_digtable->cur_igvalue;
  dm_digtable->cur_igvalue = 0x17;
  rtl8723e_dm_write_dig(hw);
  break;
 default:
  RT_TRACE(rtlpriv, COMP_ERR, DBG_LOUD,
    "switch case %#x not processed\n",
    rtlphy->current_io_type);
  break;
 }
 rtlphy->set_io_inprogress = 0;
 RT_TRACE(rtlpriv, COMP_CMD, DBG_TRACE,
   "(%#x)\n", rtlphy->current_io_type);
}
