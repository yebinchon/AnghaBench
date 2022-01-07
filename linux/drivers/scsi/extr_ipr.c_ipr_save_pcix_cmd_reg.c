
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ipr_ioa_cfg {int saved_pcix_cmd_reg; TYPE_1__* pdev; } ;
struct TYPE_3__ {int dev; } ;


 int EIO ;
 scalar_t__ PCIBIOS_SUCCESSFUL ;
 int PCI_CAP_ID_PCIX ;
 scalar_t__ PCI_X_CMD ;
 int PCI_X_CMD_DPERR_E ;
 int PCI_X_CMD_ERO ;
 int dev_err (int *,char*) ;
 int pci_find_capability (TYPE_1__*,int ) ;
 scalar_t__ pci_read_config_word (TYPE_1__*,scalar_t__,int*) ;

__attribute__((used)) static int ipr_save_pcix_cmd_reg(struct ipr_ioa_cfg *ioa_cfg)
{
 int pcix_cmd_reg = pci_find_capability(ioa_cfg->pdev, PCI_CAP_ID_PCIX);

 if (pcix_cmd_reg == 0)
  return 0;

 if (pci_read_config_word(ioa_cfg->pdev, pcix_cmd_reg + PCI_X_CMD,
     &ioa_cfg->saved_pcix_cmd_reg) != PCIBIOS_SUCCESSFUL) {
  dev_err(&ioa_cfg->pdev->dev, "Failed to save PCI-X command register\n");
  return -EIO;
 }

 ioa_cfg->saved_pcix_cmd_reg |= PCI_X_CMD_DPERR_E | PCI_X_CMD_ERO;
 return 0;
}
