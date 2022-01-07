
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int attrs; } ;


 int finish_status_attrs () ;
 int kfree (int ) ;
 TYPE_1__ vhci_attr_group ;

void vhci_finish_attr_group(void)
{
 finish_status_attrs();
 kfree(vhci_attr_group.attrs);
}
