
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;



bool isAllSpaceOrTab(u8 *data, u8 size)
{
 u8 cnt = 0, NumOfSpaceAndTab = 0;

 while (size > cnt) {
  if (data[cnt] == ' ' || data[cnt] == '\t' || data[cnt] == '\0')
   ++NumOfSpaceAndTab;

  ++cnt;
 }

 return size == NumOfSpaceAndTab;
}
