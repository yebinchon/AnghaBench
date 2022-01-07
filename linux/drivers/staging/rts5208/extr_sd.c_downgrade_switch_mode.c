
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 scalar_t__ CURRENT_LIMIT_200 ;
 scalar_t__ HS_SUPPORT ;
 scalar_t__ SD_FUNC_GROUP_1 ;
 scalar_t__ SD_FUNC_GROUP_4 ;

__attribute__((used)) static u8 downgrade_switch_mode(u8 func_group, u8 func_to_switch)
{
 if (func_group == SD_FUNC_GROUP_1) {
  if (func_to_switch > HS_SUPPORT)
   func_to_switch--;

 } else if (func_group == SD_FUNC_GROUP_4) {
  if (func_to_switch > CURRENT_LIMIT_200)
   func_to_switch--;
 }

 return func_to_switch;
}
