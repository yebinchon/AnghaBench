
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct list_head {int dummy; } ;


 int LIST_HEAD (int ) ;
 int __assign_resources_sorted (int *,struct list_head*,struct list_head*) ;
 int __dev_sort_resources (struct pci_dev*,int *) ;
 int head ;

__attribute__((used)) static void pdev_assign_resources_sorted(struct pci_dev *dev,
      struct list_head *add_head,
      struct list_head *fail_head)
{
 LIST_HEAD(head);

 __dev_sort_resources(dev, &head);
 __assign_resources_sorted(&head, add_head, fail_head);

}
