
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct amd_ntb_dev {int ntb; } ;


 int amd_deinit_dev (struct amd_ntb_dev*) ;
 int amd_deinit_side_info (struct amd_ntb_dev*) ;
 int amd_ntb_deinit_pci (struct amd_ntb_dev*) ;
 int kfree (struct amd_ntb_dev*) ;
 int ndev_deinit_debugfs (struct amd_ntb_dev*) ;
 int ntb_unregister_device (int *) ;
 struct amd_ntb_dev* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static void amd_ntb_pci_remove(struct pci_dev *pdev)
{
 struct amd_ntb_dev *ndev = pci_get_drvdata(pdev);

 ntb_unregister_device(&ndev->ntb);
 ndev_deinit_debugfs(ndev);
 amd_deinit_side_info(ndev);
 amd_deinit_dev(ndev);
 amd_ntb_deinit_pci(ndev);
 kfree(ndev);
}
