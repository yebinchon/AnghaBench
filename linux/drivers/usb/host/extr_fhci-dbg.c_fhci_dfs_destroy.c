
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fhci_hcd {int dfs_root; } ;


 int debugfs_remove_recursive (int ) ;

void fhci_dfs_destroy(struct fhci_hcd *fhci)
{
 debugfs_remove_recursive(fhci->dfs_root);
}
