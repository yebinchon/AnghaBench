
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int W83627HF_LD_WDT ;
 int cr_wdt_timeout ;
 int superio_enter () ;
 int superio_exit () ;
 int superio_outb (int ,unsigned int) ;
 int superio_select (int ) ;

__attribute__((used)) static int wdt_set_time(unsigned int timeout)
{
 int ret;

 ret = superio_enter();
 if (ret)
  return ret;

 superio_select(W83627HF_LD_WDT);
 superio_outb(cr_wdt_timeout, timeout);
 superio_exit();

 return 0;
}
