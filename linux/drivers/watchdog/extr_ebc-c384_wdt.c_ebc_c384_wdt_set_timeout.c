
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {unsigned int timeout; } ;


 int CFG_ADDR ;
 int outb (int,int ) ;
 unsigned int roundup (unsigned int,int) ;

__attribute__((used)) static int ebc_c384_wdt_set_timeout(struct watchdog_device *wdev, unsigned t)
{

 if (t > 255) {

  wdev->timeout = roundup(t, 60);


  outb(0x00, CFG_ADDR);
 } else {
  wdev->timeout = t;


  outb(0x80, CFG_ADDR);
 }

 return 0;
}
