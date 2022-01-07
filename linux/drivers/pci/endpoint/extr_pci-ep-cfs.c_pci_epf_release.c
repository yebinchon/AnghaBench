
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_epf_group {int epf; int index; } ;
struct config_item {int dummy; } ;


 int functions_idr ;
 int functions_mutex ;
 int idr_remove (int *,int ) ;
 int kfree (struct pci_epf_group*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pci_epf_destroy (int ) ;
 struct pci_epf_group* to_pci_epf_group (struct config_item*) ;

__attribute__((used)) static void pci_epf_release(struct config_item *item)
{
 struct pci_epf_group *epf_group = to_pci_epf_group(item);

 mutex_lock(&functions_mutex);
 idr_remove(&functions_idr, epf_group->index);
 mutex_unlock(&functions_mutex);
 pci_epf_destroy(epf_group->epf);
 kfree(epf_group);
}
