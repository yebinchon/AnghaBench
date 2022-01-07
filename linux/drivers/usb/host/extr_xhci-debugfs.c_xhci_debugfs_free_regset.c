
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_regset {int list; } ;


 int kfree (struct xhci_regset*) ;
 int list_del (int *) ;

__attribute__((used)) static void xhci_debugfs_free_regset(struct xhci_regset *regset)
{
 if (!regset)
  return;

 list_del(&regset->list);
 kfree(regset);
}
