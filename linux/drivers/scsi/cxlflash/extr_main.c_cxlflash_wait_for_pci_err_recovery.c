
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct cxlflash_cfg {int reset_waitq; struct pci_dev* dev; } ;


 int CXLFLASH_PCI_ERROR_RECOVERY_TIMEOUT ;
 scalar_t__ pci_channel_offline (struct pci_dev*) ;
 int wait_event_timeout (int ,int,int ) ;

__attribute__((used)) static void cxlflash_wait_for_pci_err_recovery(struct cxlflash_cfg *cfg)
{
 struct pci_dev *pdev = cfg->dev;

 if (pci_channel_offline(pdev))
  wait_event_timeout(cfg->reset_waitq,
       !pci_channel_offline(pdev),
       CXLFLASH_PCI_ERROR_RECOVERY_TIMEOUT);
}
