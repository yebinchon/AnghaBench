
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {void (* reg_notifier ) (struct wiphy*,struct regulatory_request*) ;int regulatory_flags; } ;
struct rtw_regulatory {int dummy; } ;
struct ieee80211_regdomain {int dummy; } ;


 int REGULATORY_CUSTOM_REG ;
 int REGULATORY_DISABLE_BEACON_HINTS ;
 int REGULATORY_STRICT_REG ;
 int _rtw_reg_apply_flags (struct wiphy*) ;
 struct ieee80211_regdomain* _rtw_regdomain_select (struct rtw_regulatory*) ;
 int wiphy_apply_custom_regulatory (struct wiphy*,struct ieee80211_regdomain const*) ;

__attribute__((used)) static void _rtw_regd_init_wiphy(struct rtw_regulatory *reg,
     struct wiphy *wiphy,
     void (*reg_notifier)(struct wiphy *wiphy,
            struct
            regulatory_request *
            request))
{
 const struct ieee80211_regdomain *regd;

 wiphy->reg_notifier = reg_notifier;

 wiphy->regulatory_flags |= REGULATORY_CUSTOM_REG;
 wiphy->regulatory_flags &= ~REGULATORY_STRICT_REG;
 wiphy->regulatory_flags &= ~REGULATORY_DISABLE_BEACON_HINTS;

 regd = _rtw_regdomain_select(reg);
 wiphy_apply_custom_regulatory(wiphy, regd);


 _rtw_reg_apply_flags(wiphy);
}
