
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dig_t {int cur_igvalue; int pre_igvalue; int dig_enable_flag; int back_val; } ;
struct rtl_priv {struct dig_t dm_digtable; } ;
struct ieee80211_hw {int dummy; } ;


 int COMP_DIG ;
 int DBG_LOUD ;
 int ROFDM0_XAAGCCORE1 ;
 int ROFDM0_XBAGCCORE1 ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,...) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_set_bbreg (struct ieee80211_hw*,int ,int,int) ;

void rtl92d_dm_write_dig(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct dig_t *de_digtable = &rtlpriv->dm_digtable;

 RT_TRACE(rtlpriv, COMP_DIG, DBG_LOUD,
   "cur_igvalue = 0x%x, pre_igvalue = 0x%x, back_val = %d\n",
   de_digtable->cur_igvalue, de_digtable->pre_igvalue,
   de_digtable->back_val);
 if (de_digtable->dig_enable_flag == 0) {
  RT_TRACE(rtlpriv, COMP_DIG, DBG_LOUD, "DIG is disabled\n");
  de_digtable->pre_igvalue = 0x17;
  return;
 }
 if (de_digtable->pre_igvalue != de_digtable->cur_igvalue) {
  rtl_set_bbreg(hw, ROFDM0_XAAGCCORE1, 0x7f,
         de_digtable->cur_igvalue);
  rtl_set_bbreg(hw, ROFDM0_XBAGCCORE1, 0x7f,
         de_digtable->cur_igvalue);
  de_digtable->pre_igvalue = de_digtable->cur_igvalue;
 }
}
