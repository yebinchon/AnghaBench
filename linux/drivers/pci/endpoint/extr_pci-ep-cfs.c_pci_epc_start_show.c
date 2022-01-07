
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct config_item {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int start; } ;


 int sprintf (char*,char*,int) ;
 TYPE_1__* to_pci_epc_group (struct config_item*) ;

__attribute__((used)) static ssize_t pci_epc_start_show(struct config_item *item, char *page)
{
 return sprintf(page, "%d\n",
         to_pci_epc_group(item)->start);
}
