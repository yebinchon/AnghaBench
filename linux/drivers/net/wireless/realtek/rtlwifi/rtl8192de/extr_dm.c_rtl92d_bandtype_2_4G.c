
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_2__ {scalar_t__ cck_inch14; } ;
struct rtl_priv {TYPE_1__ dm; } ;
struct ieee80211_hw {int dummy; } ;
typedef int __le32 ;


 int CCK_TABLE_LENGTH ;
 int COMP_POWER_TRACKING ;
 int DBG_LOUD ;
 long MASKCCK ;
 int MASKDWORD ;
 int RCCK0_TXFILTER2 ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int ,long,scalar_t__,scalar_t__) ;
 scalar_t__** cckswing_table_ch14 ;
 scalar_t__** cckswing_table_ch1ch13 ;
 long le32_to_cpu (int ) ;
 int rtl92d_acquire_cckandrw_pagea_ctl (struct ieee80211_hw*,unsigned long*) ;
 int rtl92d_release_cckandrw_pagea_ctl (struct ieee80211_hw*,unsigned long*) ;
 long rtl_get_bbreg (struct ieee80211_hw*,int ,int ) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static void rtl92d_bandtype_2_4G(struct ieee80211_hw *hw, long *temp_cckg,
     u8 *cck_index_old)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 int i;
 unsigned long flag = 0;
 long temp_cck;
 const u8 *cckswing;


 rtl92d_acquire_cckandrw_pagea_ctl(hw, &flag);
 temp_cck = rtl_get_bbreg(hw, RCCK0_TXFILTER2,
     MASKDWORD) & MASKCCK;
 rtl92d_release_cckandrw_pagea_ctl(hw, &flag);
 for (i = 0; i < CCK_TABLE_LENGTH; i++) {
  if (rtlpriv->dm.cck_inch14)
   cckswing = &cckswing_table_ch14[i][2];
  else
   cckswing = &cckswing_table_ch1ch13[i][2];

  if (temp_cck == le32_to_cpu(*((__le32 *)cckswing))) {
   *cck_index_old = (u8)i;
   RT_TRACE(rtlpriv, COMP_POWER_TRACKING, DBG_LOUD,
     "Initial reg0x%x = 0x%lx, cck_index = 0x%x, ch14 %d\n",
     RCCK0_TXFILTER2, temp_cck,
     *cck_index_old,
     rtlpriv->dm.cck_inch14);
   break;
  }
 }
 *temp_cckg = temp_cck;
}
