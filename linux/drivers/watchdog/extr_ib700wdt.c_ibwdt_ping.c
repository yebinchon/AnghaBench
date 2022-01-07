
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WDT_START ;
 int ibwdt_lock ;
 int outb_p (int,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int timeout ;

__attribute__((used)) static void ibwdt_ping(void)
{
 int wd_margin = 15 - ((timeout + 1) / 2);

 spin_lock(&ibwdt_lock);


 outb_p(wd_margin, WDT_START);

 spin_unlock(&ibwdt_lock);
}
