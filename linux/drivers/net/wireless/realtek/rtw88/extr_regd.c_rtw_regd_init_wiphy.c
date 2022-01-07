
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {void (* reg_notifier ) (struct wiphy*,struct regulatory_request*) ;int regulatory_flags; } ;
struct rtw_regulatory {int dummy; } ;


 int REGULATORY_CUSTOM_REG ;
 int REGULATORY_DISABLE_BEACON_HINTS ;
 int REGULATORY_STRICT_REG ;
 int rtw_regd_apply_hw_cap_flags (struct wiphy*) ;

__attribute__((used)) static int
rtw_regd_init_wiphy(struct rtw_regulatory *reg, struct wiphy *wiphy,
      void (*reg_notifier)(struct wiphy *wiphy,
      struct regulatory_request *request))
{
 wiphy->reg_notifier = reg_notifier;

 wiphy->regulatory_flags &= ~REGULATORY_CUSTOM_REG;
 wiphy->regulatory_flags &= ~REGULATORY_STRICT_REG;
 wiphy->regulatory_flags &= ~REGULATORY_DISABLE_BEACON_HINTS;

 rtw_regd_apply_hw_cap_flags(wiphy);

 return 0;
}
