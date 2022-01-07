
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amd_ntb_dev {int debugfs_dir; } ;


 int debugfs_remove_recursive (int ) ;

__attribute__((used)) static void ndev_deinit_debugfs(struct amd_ntb_dev *ndev)
{
 debugfs_remove_recursive(ndev->debugfs_dir);
}
