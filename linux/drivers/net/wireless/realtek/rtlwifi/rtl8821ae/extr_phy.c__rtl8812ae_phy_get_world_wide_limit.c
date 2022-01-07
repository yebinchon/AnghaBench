
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef scalar_t__ s8 ;


 size_t MAX_REGULATION_NUM ;

__attribute__((used)) static s8 _rtl8812ae_phy_get_world_wide_limit(s8 *limit_table)
{
 s8 min = limit_table[0];
 u8 i = 0;

 for (i = 0; i < MAX_REGULATION_NUM; ++i) {
  if (limit_table[i] < min)
   min = limit_table[i];
 }
 return min;
}
