
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct pci_dev_resource {int add_size; } ;
struct list_head {int dummy; } ;
typedef int resource_size_t ;


 struct pci_dev_resource* res_to_dev_res (struct list_head*,struct resource*) ;

__attribute__((used)) static resource_size_t get_res_add_size(struct list_head *head,
     struct resource *res)
{
 struct pci_dev_resource *dev_res;

 dev_res = res_to_dev_res(head, res);
 return dev_res ? dev_res->add_size : 0;
}
