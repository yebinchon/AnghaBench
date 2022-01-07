
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int inb_p (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wafwdt_lock ;
 int wdt_start ;
 int wdt_stop ;

__attribute__((used)) static void wafwdt_ping(void)
{

 spin_lock(&wafwdt_lock);
 inb_p(wdt_stop);
 inb_p(wdt_start);
 spin_unlock(&wafwdt_lock);
}
