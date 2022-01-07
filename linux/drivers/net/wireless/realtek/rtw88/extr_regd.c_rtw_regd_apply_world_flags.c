
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;
typedef enum nl80211_reg_initiator { ____Placeholder_nl80211_reg_initiator } nl80211_reg_initiator ;


 int rtw_regd_apply_beaconing_flags (struct wiphy*,int) ;

__attribute__((used)) static void rtw_regd_apply_world_flags(struct wiphy *wiphy,
           enum nl80211_reg_initiator initiator)
{
 rtw_regd_apply_beaconing_flags(wiphy, initiator);
}
