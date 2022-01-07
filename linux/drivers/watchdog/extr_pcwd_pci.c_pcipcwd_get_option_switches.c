
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ io_addr; } ;


 int inb_p (scalar_t__) ;
 TYPE_1__ pcipcwd_private ;

__attribute__((used)) static int pcipcwd_get_option_switches(void)
{
 int option_switches;

 option_switches = inb_p(pcipcwd_private.io_addr + 3);
 return option_switches;
}
