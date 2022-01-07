
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {void (* reg_notifier ) (struct wiphy*,struct regulatory_request*) ;int regulatory_flags; } ;
struct rtl_regulatory {int dummy; } ;
struct ieee80211_regdomain {int dummy; } ;


 int NL80211_REGDOM_SET_BY_DRIVER ;
 int REGULATORY_CUSTOM_REG ;
 int REGULATORY_DISABLE_BEACON_HINTS ;
 int REGULATORY_STRICT_REG ;
 int _rtl_reg_apply_radar_flags (struct wiphy*) ;
 int _rtl_reg_apply_world_flags (struct wiphy*,int ,struct rtl_regulatory*) ;
 struct ieee80211_regdomain* _rtl_regdomain_select (struct rtl_regulatory*) ;
 int wiphy_apply_custom_regulatory (struct wiphy*,struct ieee80211_regdomain const*) ;

__attribute__((used)) static int _rtl_regd_init_wiphy(struct rtl_regulatory *reg,
    struct wiphy *wiphy,
    void (*reg_notifier)(struct wiphy *wiphy,
           struct regulatory_request *
           request))
{
 const struct ieee80211_regdomain *regd;

 wiphy->reg_notifier = reg_notifier;

 wiphy->regulatory_flags |= REGULATORY_CUSTOM_REG;
 wiphy->regulatory_flags &= ~REGULATORY_STRICT_REG;
 wiphy->regulatory_flags &= ~REGULATORY_DISABLE_BEACON_HINTS;
 regd = _rtl_regdomain_select(reg);
 wiphy_apply_custom_regulatory(wiphy, regd);
 _rtl_reg_apply_radar_flags(wiphy);
 _rtl_reg_apply_world_flags(wiphy, NL80211_REGDOM_SET_BY_DRIVER, reg);
 return 0;
}
