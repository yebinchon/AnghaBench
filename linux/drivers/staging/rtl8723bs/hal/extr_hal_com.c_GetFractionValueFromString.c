
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;



bool GetFractionValueFromString(
 char *szStr, u8 *pInteger, u8 *pFraction, u32 *pu4bMove
)
{
 char *szScan = szStr;


 *pu4bMove = 0;
 *pInteger = 0;
 *pFraction = 0;


 while (*szScan != '\0' && (*szScan == ' ' || *szScan == '\t')) {
  ++szScan;
  ++(*pu4bMove);
 }


 do {
  (*pInteger) *= 10;
  *pInteger += (*szScan - '0');

  ++szScan;
  ++(*pu4bMove);

  if (*szScan == '.') {
   ++szScan;
   ++(*pu4bMove);

   if (*szScan < '0' || *szScan > '9')
    return 0;
   else {
    *pFraction = *szScan - '0';
    ++szScan;
    ++(*pu4bMove);
    return 1;
   }
  }
 } while (*szScan >= '0' && *szScan <= '9');

 return 1;
}
