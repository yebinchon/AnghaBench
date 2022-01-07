
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_regset {int list; } ;
struct xhci_hcd {int regset_list; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct xhci_regset* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static struct xhci_regset *xhci_debugfs_alloc_regset(struct xhci_hcd *xhci)
{
 struct xhci_regset *regset;

 regset = kzalloc(sizeof(*regset), GFP_KERNEL);
 if (!regset)
  return ((void*)0);





 INIT_LIST_HEAD(&regset->list);
 list_add_tail(&regset->list, &xhci->regset_list);

 return regset;
}
