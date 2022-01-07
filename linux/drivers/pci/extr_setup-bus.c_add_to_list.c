
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int flags; int end; int start; } ;
struct pci_dev_resource {int list; void* min_align; void* add_size; int flags; int end; int start; struct pci_dev* dev; struct resource* res; } ;
struct pci_dev {int dummy; } ;
struct list_head {int dummy; } ;
typedef void* resource_size_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct pci_dev_resource* kzalloc (int,int ) ;
 int list_add (int *,struct list_head*) ;

__attribute__((used)) static int add_to_list(struct list_head *head, struct pci_dev *dev,
         struct resource *res, resource_size_t add_size,
         resource_size_t min_align)
{
 struct pci_dev_resource *tmp;

 tmp = kzalloc(sizeof(*tmp), GFP_KERNEL);
 if (!tmp)
  return -ENOMEM;

 tmp->res = res;
 tmp->dev = dev;
 tmp->start = res->start;
 tmp->end = res->end;
 tmp->flags = res->flags;
 tmp->add_size = add_size;
 tmp->min_align = min_align;

 list_add(&tmp->list, head);

 return 0;
}
