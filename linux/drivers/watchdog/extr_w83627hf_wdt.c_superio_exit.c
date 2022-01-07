
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WDT_EFER ;
 int outb_p (int ,int ) ;
 int release_region (int ,int) ;
 int wdt_cfg_leave ;
 int wdt_io ;

__attribute__((used)) static void superio_exit(void)
{
 outb_p(wdt_cfg_leave, WDT_EFER);
 release_region(wdt_io, 2);
}
