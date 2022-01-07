
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;


 int PET_ADDR ;
 int outb (int,int ) ;

__attribute__((used)) static int ebc_c384_wdt_stop(struct watchdog_device *wdev)
{
 outb(0x00, PET_ADDR);

 return 0;
}
