
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dig_t {scalar_t__ cur_igvalue; scalar_t__ pre_igvalue; int back_val; } ;
struct rtl_priv {struct dig_t dm_digtable; } ;
struct ieee80211_hw {int dummy; } ;


 int COMP_DIG ;
 int DBG_LOUD ;
 int ROFDM0_XAAGCCORE1 ;
 int ROFDM0_XBAGCCORE1 ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,scalar_t__,scalar_t__,int ) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_set_bbreg (struct ieee80211_hw*,int ,int,scalar_t__) ;

void rtl8723e_dm_write_dig(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct dig_t *dm_digtable = &rtlpriv->dm_digtable;

 RT_TRACE(rtlpriv, COMP_DIG, DBG_LOUD,
   "cur_igvalue = 0x%x, pre_igvalue = 0x%x, back_val = %d\n",
    dm_digtable->cur_igvalue, dm_digtable->pre_igvalue,
    dm_digtable->back_val);

 if (dm_digtable->pre_igvalue != dm_digtable->cur_igvalue) {
  rtl_set_bbreg(hw, ROFDM0_XAAGCCORE1, 0x7f,
         dm_digtable->cur_igvalue);
  rtl_set_bbreg(hw, ROFDM0_XBAGCCORE1, 0x7f,
         dm_digtable->cur_igvalue);

  dm_digtable->pre_igvalue = dm_digtable->cur_igvalue;
 }
}
