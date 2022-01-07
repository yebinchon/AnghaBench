
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;
struct rtw_regulatory {int dummy; } ;
struct regulatory_request {int dummy; } ;


 int _rtw_reg_apply_flags (struct wiphy*) ;

__attribute__((used)) static int _rtw_reg_notifier_apply(struct wiphy *wiphy,
       struct regulatory_request *request,
       struct rtw_regulatory *reg)
{

 _rtw_reg_apply_flags(wiphy);
 return 0;
}
