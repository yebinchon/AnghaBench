
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_qla_host {int response_dma; int response_ring; TYPE_1__* pdev; int request_dma; int request_ring; int mmpbase; } ;
struct response {int dummy; } ;
struct pci_dev {int irq; } ;
struct Scsi_Host {int io_port; scalar_t__ hostdata; } ;
typedef int request_t ;
struct TYPE_2__ {int dev; } ;


 int REQUEST_ENTRY_CNT ;
 int RESPONSE_ENTRY_CNT ;
 int dma_free_coherent (int *,int,int ,int ) ;
 int free_irq (int ,struct scsi_qla_host*) ;
 int iounmap (int ) ;
 int pci_disable_device (struct pci_dev*) ;
 struct Scsi_Host* pci_get_drvdata (struct pci_dev*) ;
 int qla1280_disable_intrs (struct scsi_qla_host*) ;
 int release_region (int ,int) ;
 int scsi_host_put (struct Scsi_Host*) ;
 int scsi_remove_host (struct Scsi_Host*) ;

__attribute__((used)) static void
qla1280_remove_one(struct pci_dev *pdev)
{
 struct Scsi_Host *host = pci_get_drvdata(pdev);
 struct scsi_qla_host *ha = (struct scsi_qla_host *)host->hostdata;

 scsi_remove_host(host);

 qla1280_disable_intrs(ha);

 free_irq(pdev->irq, ha);




 release_region(host->io_port, 0xff);


 dma_free_coherent(&ha->pdev->dev,
   ((REQUEST_ENTRY_CNT + 1) * (sizeof(request_t))),
   ha->request_ring, ha->request_dma);
 dma_free_coherent(&ha->pdev->dev,
   ((RESPONSE_ENTRY_CNT + 1) * (sizeof(struct response))),
   ha->response_ring, ha->response_dma);

 pci_disable_device(pdev);

 scsi_host_put(host);
}
