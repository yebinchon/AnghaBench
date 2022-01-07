
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;
struct rtw_dev {int regd; } ;
struct regulatory_request {scalar_t__ initiator; int alpha2; } ;


 scalar_t__ NL80211_REGDOM_SET_BY_USER ;
 int rtw_regd_apply_world_flags (struct wiphy*,scalar_t__) ;
 int rtw_regd_find_reg_by_name (int ) ;

__attribute__((used)) static int rtw_regd_notifier_apply(struct rtw_dev *rtwdev,
       struct wiphy *wiphy,
       struct regulatory_request *request)
{
 if (request->initiator == NL80211_REGDOM_SET_BY_USER)
  return 0;
 rtwdev->regd = rtw_regd_find_reg_by_name(request->alpha2);
 rtw_regd_apply_world_flags(wiphy, request->initiator);

 return 0;
}
