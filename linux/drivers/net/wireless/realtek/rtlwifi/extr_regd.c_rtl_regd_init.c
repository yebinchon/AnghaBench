
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wiphy {int dummy; } ;
struct TYPE_4__ {scalar_t__ country_code; scalar_t__* alpha2; } ;
struct TYPE_3__ {scalar_t__ channel_plan; } ;
struct rtl_priv {TYPE_2__ regd; TYPE_1__ efuse; } ;
struct ieee80211_hw {struct wiphy* wiphy; } ;
struct country_code_to_enum_rd {scalar_t__* iso_name; } ;


 int COMP_REGD ;
 scalar_t__ COUNTRY_CODE_MAX ;
 scalar_t__ COUNTRY_CODE_WORLD_WIDE_13 ;
 int DBG_DMESG ;
 int DBG_TRACE ;
 int EINVAL ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,...) ;
 struct country_code_to_enum_rd* _rtl_regd_find_country (scalar_t__) ;
 int _rtl_regd_init_wiphy (TYPE_2__*,struct wiphy*,void (*) (struct wiphy*,struct regulatory_request*)) ;
 scalar_t__ channel_plan_to_country_code (scalar_t__) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

int rtl_regd_init(struct ieee80211_hw *hw,
    void (*reg_notifier)(struct wiphy *wiphy,
           struct regulatory_request *request))
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct wiphy *wiphy = hw->wiphy;
 struct country_code_to_enum_rd *country = ((void*)0);

 if (wiphy == ((void*)0) || &rtlpriv->regd == ((void*)0))
  return -EINVAL;


 rtlpriv->regd.country_code =
  channel_plan_to_country_code(rtlpriv->efuse.channel_plan);

 RT_TRACE(rtlpriv, COMP_REGD, DBG_DMESG,
   "rtl: EEPROM regdomain: 0x%0x country code: %d\n",
   rtlpriv->efuse.channel_plan, rtlpriv->regd.country_code);

 if (rtlpriv->regd.country_code >= COUNTRY_CODE_MAX) {
  RT_TRACE(rtlpriv, COMP_REGD, DBG_DMESG,
    "rtl: EEPROM indicates invalid country code, world wide 13 should be used\n");

  rtlpriv->regd.country_code = COUNTRY_CODE_WORLD_WIDE_13;
 }

 country = _rtl_regd_find_country(rtlpriv->regd.country_code);

 if (country) {
  rtlpriv->regd.alpha2[0] = country->iso_name[0];
  rtlpriv->regd.alpha2[1] = country->iso_name[1];
 } else {
  rtlpriv->regd.alpha2[0] = '0';
  rtlpriv->regd.alpha2[1] = '0';
 }

 RT_TRACE(rtlpriv, COMP_REGD, DBG_TRACE,
   "rtl: Country alpha2 being used: %c%c\n",
    rtlpriv->regd.alpha2[0], rtlpriv->regd.alpha2[1]);

 _rtl_regd_init_wiphy(&rtlpriv->regd, wiphy, reg_notifier);

 return 0;
}
