
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;


 scalar_t__ PM_ISLAND4_BASE_SIGNAL_GROUP_NUMBER ;

__attribute__((used)) static u64 pm_translate_signal_group_number_on_island4(u64 subgroup)
{
 return PM_ISLAND4_BASE_SIGNAL_GROUP_NUMBER + subgroup;
}
