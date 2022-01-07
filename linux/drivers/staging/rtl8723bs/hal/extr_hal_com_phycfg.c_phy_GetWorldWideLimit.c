
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef scalar_t__ s8 ;


 size_t MAX_REGULATION_NUM ;

__attribute__((used)) static s8 phy_GetWorldWideLimit(s8 *LimitTable)
{
 s8 min = LimitTable[0];
 u8 i = 0;

 for (i = 0; i < MAX_REGULATION_NUM; ++i) {
  if (LimitTable[i] < min)
   min = LimitTable[i];
 }

 return min;
}
