
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EBUSY ;
 int WATCHDOG_NAME ;
 int WDT_EFER ;
 int outb_p (int ,int ) ;
 int request_muxed_region (int ,int,int ) ;
 int wdt_cfg_enter ;
 int wdt_io ;

__attribute__((used)) static int superio_enter(void)
{
 if (!request_muxed_region(wdt_io, 2, WATCHDOG_NAME))
  return -EBUSY;

 outb_p(wdt_cfg_enter, WDT_EFER);
 outb_p(wdt_cfg_enter, WDT_EFER);

 return 0;
}
