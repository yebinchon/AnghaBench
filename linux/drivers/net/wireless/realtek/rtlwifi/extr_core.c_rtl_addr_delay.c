
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int mdelay (int) ;
 int msleep (int) ;
 int usleep_range (int,int) ;

void rtl_addr_delay(u32 addr)
{
 if (addr == 0xfe)
  mdelay(50);
 else if (addr == 0xfd)
  msleep(5);
 else if (addr == 0xfc)
  msleep(1);
 else if (addr == 0xfb)
  usleep_range(50, 100);
 else if (addr == 0xfa)
  usleep_range(5, 10);
 else if (addr == 0xf9)
  usleep_range(1, 2);
}
