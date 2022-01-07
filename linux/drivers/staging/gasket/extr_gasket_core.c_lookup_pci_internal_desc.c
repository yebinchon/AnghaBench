
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct gasket_internal_desc {TYPE_1__* driver_desc; } ;
struct TYPE_2__ {scalar_t__ pci_id_table; } ;


 int GASKET_FRAMEWORK_DESC_MAX ;
 int __must_hold (int *) ;
 struct gasket_internal_desc* g_descs ;
 int g_mutex ;
 scalar_t__ pci_match_id (scalar_t__,struct pci_dev*) ;

__attribute__((used)) static struct gasket_internal_desc *
lookup_pci_internal_desc(struct pci_dev *pci_dev)
{
 int i;

 __must_hold(&g_mutex);
 for (i = 0; i < GASKET_FRAMEWORK_DESC_MAX; i++) {
  if (g_descs[i].driver_desc &&
      g_descs[i].driver_desc->pci_id_table &&
      pci_match_id(g_descs[i].driver_desc->pci_id_table, pci_dev))
   return &g_descs[i];
 }

 return ((void*)0);
}
