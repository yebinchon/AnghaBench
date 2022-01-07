
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl_hal {scalar_t__ hw_type; int version; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum ht_channel_width { ____Placeholder_ht_channel_width } ht_channel_width ;


 int BIT (int) ;
 scalar_t__ HARDWARE_TYPE_RTL8812AE ;
 int HT_CHANNEL_WIDTH_20 ;
 int HT_CHANNEL_WIDTH_20_40 ;
 int HT_CHANNEL_WIDTH_80 ;
 scalar_t__ IS_VENDOR_8812A_C_CUT (int ) ;
 int RADC_BUF_CLK ;
 int RRFMOD ;
 struct rtl_hal* rtl_hal (int ) ;
 int rtl_priv (struct ieee80211_hw*) ;
 int rtl_set_bbreg (struct ieee80211_hw*,int ,int,int) ;

__attribute__((used)) static void rtl8812ae_fixspur(struct ieee80211_hw *hw,
         enum ht_channel_width band_width, u8 channel)
{
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));


 if (IS_VENDOR_8812A_C_CUT(rtlhal->version)) {
  if (band_width == HT_CHANNEL_WIDTH_20_40 && channel == 11)
   rtl_set_bbreg(hw, RRFMOD, 0xC00, 0x3);

  else
   rtl_set_bbreg(hw, RRFMOD, 0xC00, 0x2);





  if (band_width == HT_CHANNEL_WIDTH_20 &&
      (channel == 13 || channel == 14)) {
   rtl_set_bbreg(hw, RRFMOD, 0x300, 0x3);

   rtl_set_bbreg(hw, RADC_BUF_CLK, BIT(30), 1);

  } else if (band_width == HT_CHANNEL_WIDTH_20_40 &&
      channel == 11) {
   rtl_set_bbreg(hw, RADC_BUF_CLK, BIT(30), 1);

  } else if (band_width != HT_CHANNEL_WIDTH_80) {
   rtl_set_bbreg(hw, RRFMOD, 0x300, 0x2);

   rtl_set_bbreg(hw, RADC_BUF_CLK, BIT(30), 0);

  }
 } else if (rtlhal->hw_type == HARDWARE_TYPE_RTL8812AE) {



  if (band_width == HT_CHANNEL_WIDTH_20 &&
      (channel == 13 || channel == 14))
   rtl_set_bbreg(hw, RRFMOD, 0x300, 0x3);

  else if (channel <= 14)
   rtl_set_bbreg(hw, RRFMOD, 0x300, 0x2);

 }
}
