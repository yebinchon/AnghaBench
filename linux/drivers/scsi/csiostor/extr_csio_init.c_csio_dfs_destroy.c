
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csio_hw {scalar_t__ debugfs_root; } ;


 int debugfs_remove_recursive (scalar_t__) ;

__attribute__((used)) static int
csio_dfs_destroy(struct csio_hw *hw)
{
 if (hw->debugfs_root)
  debugfs_remove_recursive(hw->debugfs_root);

 return 0;
}
