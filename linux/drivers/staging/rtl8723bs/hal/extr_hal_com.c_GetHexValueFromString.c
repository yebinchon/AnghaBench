
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DBG_871X (char*,char*,int*,int*) ;
 scalar_t__ IsHexDigit (char) ;
 scalar_t__ MapCharToHexDigit (char) ;

bool GetHexValueFromString(char *szStr, u32 *pu4bVal, u32 *pu4bMove)
{
 char *szScan = szStr;


 if (!szStr || !pu4bVal || !pu4bMove) {
  DBG_871X("GetHexValueFromString(): Invalid input arguments! szStr: %p, pu4bVal: %p, pu4bMove: %p\n",
    szStr, pu4bVal, pu4bMove);
  return 0;
 }


 *pu4bMove = 0;
 *pu4bVal = 0;


 while (*szScan != '\0' && (*szScan == ' ' || *szScan == '\t')) {
  szScan++;
  (*pu4bMove)++;
 }


 if (*szScan == '0' && (*(szScan+1) == 'x' || *(szScan+1) == 'X')) {
  szScan += 2;
  (*pu4bMove) += 2;
 }



 if (!IsHexDigit(*szScan))
  return 0;


 do {
  (*pu4bVal) <<= 4;
  *pu4bVal += MapCharToHexDigit(*szScan);

  szScan++;
  (*pu4bMove)++;
 } while (IsHexDigit(*szScan));

 return 1;
}
