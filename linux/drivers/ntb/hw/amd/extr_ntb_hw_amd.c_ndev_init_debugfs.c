
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pdev; } ;
struct amd_ntb_dev {int * debugfs_dir; int * debugfs_info; TYPE_1__ ntb; } ;


 int S_IRUSR ;
 int amd_ntb_debugfs_info ;
 int * debugfs_create_dir (int ,int ) ;
 int * debugfs_create_file (char*,int ,int *,struct amd_ntb_dev*,int *) ;
 int debugfs_dir ;
 int pci_name (int ) ;

__attribute__((used)) static void ndev_init_debugfs(struct amd_ntb_dev *ndev)
{
 if (!debugfs_dir) {
  ndev->debugfs_dir = ((void*)0);
  ndev->debugfs_info = ((void*)0);
 } else {
  ndev->debugfs_dir =
   debugfs_create_dir(pci_name(ndev->ntb.pdev),
        debugfs_dir);
  if (!ndev->debugfs_dir)
   ndev->debugfs_info = ((void*)0);
  else
   ndev->debugfs_info =
    debugfs_create_file("info", S_IRUSR,
          ndev->debugfs_dir, ndev,
          &amd_ntb_debugfs_info);
 }
}
