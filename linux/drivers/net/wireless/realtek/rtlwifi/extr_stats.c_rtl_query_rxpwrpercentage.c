
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int s8 ;



u8 rtl_query_rxpwrpercentage(s8 antpower)
{
 if ((antpower <= -100) || (antpower >= 20))
  return 0;
 else if (antpower >= 0)
  return 100;
 else
  return 100 + antpower;
}
