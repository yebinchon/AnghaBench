
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct config_item {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {TYPE_1__* epf; } ;
struct TYPE_3__ {int msix_interrupts; } ;


 int sprintf (char*,char*,int) ;
 TYPE_2__* to_pci_epf_group (struct config_item*) ;

__attribute__((used)) static ssize_t pci_epf_msix_interrupts_show(struct config_item *item,
         char *page)
{
 return sprintf(page, "%d\n",
         to_pci_epf_group(item)->epf->msix_interrupts);
}
