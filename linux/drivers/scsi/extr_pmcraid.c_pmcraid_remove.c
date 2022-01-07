
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmcraid_instance {int host; int mapped_dma_addr; int worker_q; } ;
struct pci_dev {int dummy; } ;


 int flush_work (int *) ;
 int iounmap (int ) ;
 int pci_disable_device (struct pci_dev*) ;
 struct pmcraid_instance* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int pmcraid_disable_interrupts (struct pmcraid_instance*,int ) ;
 int pmcraid_kill_tasklets (struct pmcraid_instance*) ;
 int pmcraid_release_buffers (struct pmcraid_instance*) ;
 int pmcraid_release_chrdev (struct pmcraid_instance*) ;
 int pmcraid_shutdown (struct pci_dev*) ;
 int pmcraid_unregister_interrupt_handler (struct pmcraid_instance*) ;
 int scsi_block_requests (int ) ;
 int scsi_host_put (int ) ;
 int scsi_remove_host (int ) ;

__attribute__((used)) static void pmcraid_remove(struct pci_dev *pdev)
{
 struct pmcraid_instance *pinstance = pci_get_drvdata(pdev);


 pmcraid_release_chrdev(pinstance);


 scsi_remove_host(pinstance->host);


 scsi_block_requests(pinstance->host);


 pmcraid_shutdown(pdev);

 pmcraid_disable_interrupts(pinstance, ~0);
 flush_work(&pinstance->worker_q);

 pmcraid_kill_tasklets(pinstance);
 pmcraid_unregister_interrupt_handler(pinstance);
 pmcraid_release_buffers(pinstance);
 iounmap(pinstance->mapped_dma_addr);
 pci_release_regions(pdev);
 scsi_host_put(pinstance->host);
 pci_disable_device(pdev);

 return;
}
