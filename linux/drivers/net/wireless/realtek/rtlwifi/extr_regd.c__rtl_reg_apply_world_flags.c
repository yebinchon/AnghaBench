
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;
struct rtl_regulatory {int dummy; } ;
typedef enum nl80211_reg_initiator { ____Placeholder_nl80211_reg_initiator } nl80211_reg_initiator ;


 int _rtl_reg_apply_active_scan_flags (struct wiphy*,int) ;
 int _rtl_reg_apply_beaconing_flags (struct wiphy*,int) ;

__attribute__((used)) static void _rtl_reg_apply_world_flags(struct wiphy *wiphy,
           enum nl80211_reg_initiator initiator,
           struct rtl_regulatory *reg)
{
 _rtl_reg_apply_beaconing_flags(wiphy, initiator);
 _rtl_reg_apply_active_scan_flags(wiphy, initiator);
 return;
}
