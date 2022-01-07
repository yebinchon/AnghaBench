
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int PM_ISLAND6_BASE_SIGNAL_GROUP_NUMBER ;

__attribute__((used)) static u64 pm_translate_signal_group_number_on_island6(u64 subgroup,
             u64 subsubgroup)
{
 switch (subgroup) {
 case 3:
 case 4:
 case 5:
  subgroup += 1;
  break;
 default:
  break;
 }

 switch (subsubgroup) {
 case 4:
 case 5:
 case 6:
  subsubgroup += 2;
  break;
 case 7:
 case 8:
 case 9:
 case 10:
  subsubgroup += 4;
  break;
 case 11:
 case 12:
 case 13:
  subsubgroup += 5;
  break;
 default:
  break;
 }

 if (subgroup <= 5)
  return (PM_ISLAND6_BASE_SIGNAL_GROUP_NUMBER + subgroup);
 else
  return (PM_ISLAND6_BASE_SIGNAL_GROUP_NUMBER + subgroup
   + subsubgroup - 1);
}
