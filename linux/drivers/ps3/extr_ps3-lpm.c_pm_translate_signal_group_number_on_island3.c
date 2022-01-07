
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int PM_ISLAND3_BASE_SIGNAL_GROUP_NUMBER ;

__attribute__((used)) static u64 pm_translate_signal_group_number_on_island3(u64 subgroup)
{

 switch (subgroup) {
 case 2:
 case 3:
 case 4:
  subgroup += 2;
  break;
 case 5:
  subgroup = 8;
  break;
 default:
  break;
 }
 return PM_ISLAND3_BASE_SIGNAL_GROUP_NUMBER + subgroup;
}
