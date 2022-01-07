
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 unsigned long jiffies ;

void rtw_generate_random_ibss(u8 *pibss)
{
 unsigned long curtime = jiffies;

 pibss[0] = 0x02;
 pibss[1] = 0x11;
 pibss[2] = 0x87;
 pibss[3] = (u8)(curtime & 0xff) ;
 pibss[4] = (u8)((curtime>>8) & 0xff) ;
 pibss[5] = (u8)((curtime>>16) & 0xff) ;
 return;
}
