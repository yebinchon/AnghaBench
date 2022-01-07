
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef scalar_t__ u8 ;



uint rtw_get_rateset_len(u8 *rateset)
{
 uint i;

 for (i = 0; i < 13; i++)
  if (rateset[i] == 0)
   break;
 return i;
}
