
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;
struct rtl_regulatory {int dummy; } ;
struct regulatory_request {int initiator; } ;






 int _rtl_reg_apply_radar_flags (struct wiphy*) ;
 int _rtl_reg_apply_world_flags (struct wiphy*,int,struct rtl_regulatory*) ;

__attribute__((used)) static int _rtl_reg_notifier_apply(struct wiphy *wiphy,
       struct regulatory_request *request,
       struct rtl_regulatory *reg)
{

 _rtl_reg_apply_radar_flags(wiphy);

 switch (request->initiator) {
 case 129:
 case 131:
 case 128:
  break;
 case 130:
  _rtl_reg_apply_world_flags(wiphy, request->initiator, reg);
  break;
 }

 return 0;
}
