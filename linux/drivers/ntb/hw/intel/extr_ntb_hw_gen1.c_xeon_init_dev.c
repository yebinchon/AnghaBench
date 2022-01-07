
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct pci_dev {int device; int dev; } ;
struct TYPE_2__ {int topo; struct pci_dev* pdev; } ;
struct intel_ntb_dev {int bar4_split; TYPE_1__ ntb; int * reg; int hwerr_flags; } ;


 int EINVAL ;
 int EIO ;
 scalar_t__ HSX_SPLIT_BAR_MW_COUNT ;
 int IORESOURCE_MEM ;
 int NTB_HWERR_B2BDOORBELL_BIT14 ;
 int NTB_HWERR_SB01BASE_LOCKUP ;
 int NTB_HWERR_SDOORBELL_LOCKUP ;
 int NTB_TOPO_NONE ;
 int NTB_TOPO_SEC ;
 int XEON_PPD_OFFSET ;
 int dev_dbg (int *,char*,int,int) ;
 scalar_t__ hweight32 (int) ;
 int ntb_topo_string (int ) ;
 int pci_read_config_byte (struct pci_dev*,int ,int*) ;
 int pci_select_bars (struct pci_dev*,int ) ;
 int xeon_init_isr (struct intel_ntb_dev*) ;
 int xeon_init_ntb (struct intel_ntb_dev*) ;
 int xeon_ppd_bar4_split (struct intel_ntb_dev*,int) ;
 int xeon_ppd_topo (struct intel_ntb_dev*,int) ;
 int xeon_reg ;

__attribute__((used)) static int xeon_init_dev(struct intel_ntb_dev *ndev)
{
 struct pci_dev *pdev;
 u8 ppd;
 int rc, mem;

 pdev = ndev->ntb.pdev;

 switch (pdev->device) {






 case 129:
 case 134:
 case 139:
 case 128:
 case 133:
 case 138:
 case 130:
 case 135:
 case 140:
 case 131:
 case 136:
 case 141:
 case 132:
 case 137:
 case 142:
  ndev->hwerr_flags |= NTB_HWERR_SDOORBELL_LOCKUP;
  break;
 }

 switch (pdev->device) {



 case 130:
 case 135:
 case 140:
 case 131:
 case 136:
 case 141:
 case 132:
 case 137:
 case 142:
  ndev->hwerr_flags |= NTB_HWERR_SB01BASE_LOCKUP;
  break;
 }

 switch (pdev->device) {




 case 129:
 case 134:
 case 139:
 case 128:
 case 133:
 case 138:
 case 130:
 case 135:
 case 140:
 case 131:
 case 136:
 case 141:
 case 132:
 case 137:
 case 142:
  ndev->hwerr_flags |= NTB_HWERR_B2BDOORBELL_BIT14;
  break;
 }

 ndev->reg = &xeon_reg;

 rc = pci_read_config_byte(pdev, XEON_PPD_OFFSET, &ppd);
 if (rc)
  return -EIO;

 ndev->ntb.topo = xeon_ppd_topo(ndev, ppd);
 dev_dbg(&pdev->dev, "ppd %#x topo %s\n", ppd,
  ntb_topo_string(ndev->ntb.topo));
 if (ndev->ntb.topo == NTB_TOPO_NONE)
  return -EINVAL;

 if (ndev->ntb.topo != NTB_TOPO_SEC) {
  ndev->bar4_split = xeon_ppd_bar4_split(ndev, ppd);
  dev_dbg(&pdev->dev, "ppd %#x bar4_split %d\n",
   ppd, ndev->bar4_split);
 } else {




  mem = pci_select_bars(pdev, IORESOURCE_MEM);
  ndev->bar4_split = hweight32(mem) ==
   HSX_SPLIT_BAR_MW_COUNT + 1;
  dev_dbg(&pdev->dev, "mem %#x bar4_split %d\n",
   mem, ndev->bar4_split);
 }

 rc = xeon_init_ntb(ndev);
 if (rc)
  return rc;

 return xeon_init_isr(ndev);
}
