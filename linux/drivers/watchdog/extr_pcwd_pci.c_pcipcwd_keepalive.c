
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int io_lock; int io_addr; } ;


 scalar_t__ DEBUG ;
 scalar_t__ debug ;
 int outb_p (int,int ) ;
 TYPE_1__ pcipcwd_private ;
 int pr_debug (char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int pcipcwd_keepalive(void)
{

 spin_lock(&pcipcwd_private.io_lock);
 outb_p(0x42, pcipcwd_private.io_addr);
 spin_unlock(&pcipcwd_private.io_lock);

 if (debug >= DEBUG)
  pr_debug("Watchdog keepalive signal send\n");

 return 0;
}
