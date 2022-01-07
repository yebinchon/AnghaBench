
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct TYPE_2__ {int topo; struct pci_dev* pdev; } ;
struct amd_ntb_dev {int db_count; scalar_t__ db_valid_mask; TYPE_1__ ntb; } ;


 scalar_t__ BIT_ULL (int ) ;
 int amd_get_topo (struct amd_ntb_dev*) ;
 int amd_init_isr (struct amd_ntb_dev*) ;
 int amd_init_ntb (struct amd_ntb_dev*) ;
 int dev_dbg (int *,char*,int ) ;
 int dev_err (int *,char*) ;
 int ntb_topo_string (int ) ;

__attribute__((used)) static int amd_init_dev(struct amd_ntb_dev *ndev)
{
 struct pci_dev *pdev;
 int rc = 0;

 pdev = ndev->ntb.pdev;

 ndev->ntb.topo = amd_get_topo(ndev);
 dev_dbg(&pdev->dev, "AMD NTB topo is %s\n",
  ntb_topo_string(ndev->ntb.topo));

 rc = amd_init_ntb(ndev);
 if (rc)
  return rc;

 rc = amd_init_isr(ndev);
 if (rc) {
  dev_err(&pdev->dev, "fail to init isr.\n");
  return rc;
 }

 ndev->db_valid_mask = BIT_ULL(ndev->db_count) - 1;

 return 0;
}
