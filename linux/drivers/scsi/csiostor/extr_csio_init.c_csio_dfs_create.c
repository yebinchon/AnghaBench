
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csio_hw {int pdev; int debugfs_root; } ;


 scalar_t__ csio_debugfs_root ;
 int csio_setup_debugfs (struct csio_hw*) ;
 int debugfs_create_dir (int ,scalar_t__) ;
 int pci_name (int ) ;

__attribute__((used)) static int
csio_dfs_create(struct csio_hw *hw)
{
 if (csio_debugfs_root) {
  hw->debugfs_root = debugfs_create_dir(pci_name(hw->pdev),
       csio_debugfs_root);
  csio_setup_debugfs(hw);
 }

 return 0;
}
