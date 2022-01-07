
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dig_t {int cur_igvalue; int pre_igvalue; int back_val; } ;
struct rtl_priv {struct dig_t dm_digtable; } ;
struct ieee80211_hw {int dummy; } ;


 int COMP_DIG ;
 int DBG_LOUD ;
 int ROFDM0_XAAGCCORE1 ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int,int,int ) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_set_bbreg (struct ieee80211_hw*,int ,int,int) ;

void rtl88e_dm_write_dig(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct dig_t *dm_dig = &rtlpriv->dm_digtable;

 RT_TRACE(rtlpriv, COMP_DIG, DBG_LOUD,
   "cur_igvalue = 0x%x, pre_igvalue = 0x%x, backoff_val = %d\n",
   dm_dig->cur_igvalue, dm_dig->pre_igvalue,
   dm_dig->back_val);

 if (dm_dig->cur_igvalue > 0x3f)
  dm_dig->cur_igvalue = 0x3f;
 if (dm_dig->pre_igvalue != dm_dig->cur_igvalue) {
  rtl_set_bbreg(hw, ROFDM0_XAAGCCORE1, 0x7f,
         dm_dig->cur_igvalue);

  dm_dig->pre_igvalue = dm_dig->cur_igvalue;
 }
}
