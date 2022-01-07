
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct ipr_ioa_cfg {int host; int hdw_dma_regs; scalar_t__ reset_work_q; struct pci_dev* pdev; } ;


 int ENTER ;
 int LEAVE ;
 int destroy_workqueue (scalar_t__) ;
 int iounmap (int ) ;
 int ipr_free_irqs (struct ipr_ioa_cfg*) ;
 int ipr_free_mem (struct ipr_ioa_cfg*) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int scsi_host_put (int ) ;

__attribute__((used)) static void ipr_free_all_resources(struct ipr_ioa_cfg *ioa_cfg)
{
 struct pci_dev *pdev = ioa_cfg->pdev;

 ENTER;
 ipr_free_irqs(ioa_cfg);
 if (ioa_cfg->reset_work_q)
  destroy_workqueue(ioa_cfg->reset_work_q);
 iounmap(ioa_cfg->hdw_dma_regs);
 pci_release_regions(pdev);
 ipr_free_mem(ioa_cfg);
 scsi_host_put(ioa_cfg->host);
 pci_disable_device(pdev);
 LEAVE;
}
