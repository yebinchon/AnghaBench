
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {unsigned int timeout; } ;


 unsigned int DIV_ROUND_UP (unsigned int,int) ;
 int PET_ADDR ;
 int outb (unsigned int,int ) ;

__attribute__((used)) static int ebc_c384_wdt_start(struct watchdog_device *wdev)
{
 unsigned t = wdev->timeout;


 if (t > 255)
  t = DIV_ROUND_UP(t, 60);

 outb(t, PET_ADDR);

 return 0;
}
