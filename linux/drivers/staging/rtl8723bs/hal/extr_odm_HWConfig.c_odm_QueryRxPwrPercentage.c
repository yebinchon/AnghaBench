
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int s8 ;



__attribute__((used)) static u8 odm_QueryRxPwrPercentage(s8 AntPower)
{
 if ((AntPower <= -100) || (AntPower >= 20))
  return 0;
 else if (AntPower >= 0)
  return 100;
 else
  return 100 + AntPower;

}
