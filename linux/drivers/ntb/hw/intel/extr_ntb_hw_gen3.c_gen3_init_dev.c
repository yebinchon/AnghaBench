
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct pci_dev {int dev; } ;
struct TYPE_2__ {int topo; struct pci_dev* pdev; } ;
struct intel_ntb_dev {int hwerr_flags; TYPE_1__ ntb; int * reg; } ;


 int EINVAL ;
 int EIO ;
 int NTB_HWERR_MSIX_VECTOR32_BAD ;
 int NTB_TOPO_NONE ;
 int XEON_PPD_OFFSET ;
 int dev_dbg (int *,char*,int ,int ) ;
 int gen3_init_isr (struct intel_ntb_dev*) ;
 int gen3_init_ntb (struct intel_ntb_dev*) ;
 int gen3_reg ;
 int ntb_topo_string (int ) ;
 int pci_read_config_byte (struct pci_dev*,int ,int *) ;
 int xeon_ppd_topo (struct intel_ntb_dev*,int ) ;

int gen3_init_dev(struct intel_ntb_dev *ndev)
{
 struct pci_dev *pdev;
 u8 ppd;
 int rc;

 pdev = ndev->ntb.pdev;

 ndev->reg = &gen3_reg;

 rc = pci_read_config_byte(pdev, XEON_PPD_OFFSET, &ppd);
 if (rc)
  return -EIO;

 ndev->ntb.topo = xeon_ppd_topo(ndev, ppd);
 dev_dbg(&pdev->dev, "ppd %#x topo %s\n", ppd,
  ntb_topo_string(ndev->ntb.topo));
 if (ndev->ntb.topo == NTB_TOPO_NONE)
  return -EINVAL;

 ndev->hwerr_flags |= NTB_HWERR_MSIX_VECTOR32_BAD;

 rc = gen3_init_ntb(ndev);
 if (rc)
  return rc;

 return gen3_init_isr(ndev);
}
