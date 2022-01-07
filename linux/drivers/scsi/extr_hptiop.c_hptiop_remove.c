
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t u32 ;
struct pci_dev {int dummy; } ;
struct hptiop_hba {size_t max_requests; TYPE_3__* pcidev; TYPE_2__* ops; scalar_t__* dma_coherent_handle; scalar_t__* dma_coherent; scalar_t__ req_size; TYPE_1__* host; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
struct TYPE_8__ {int dev; int irq; } ;
struct TYPE_7__ {int (* unmap_pci_bar ) (struct hptiop_hba*) ;int (* internal_memfree ) (struct hptiop_hba*) ;} ;
struct TYPE_6__ {int host_no; } ;


 int dma_free_coherent (int *,scalar_t__,scalar_t__,scalar_t__) ;
 int dprintk (char*,int ) ;
 int free_irq (int ,struct hptiop_hba*) ;
 int hptiop_shutdown (struct pci_dev*) ;
 int pci_disable_device (TYPE_3__*) ;
 struct Scsi_Host* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (TYPE_3__*) ;
 int pci_set_drvdata (TYPE_3__*,int *) ;
 int scsi_host_put (struct Scsi_Host*) ;
 int scsi_remove_host (struct Scsi_Host*) ;
 int stub1 (struct hptiop_hba*) ;
 int stub2 (struct hptiop_hba*) ;

__attribute__((used)) static void hptiop_remove(struct pci_dev *pcidev)
{
 struct Scsi_Host *host = pci_get_drvdata(pcidev);
 struct hptiop_hba *hba = (struct hptiop_hba *)host->hostdata;
 u32 i;

 dprintk("scsi%d: hptiop_remove\n", hba->host->host_no);

 scsi_remove_host(host);

 hptiop_shutdown(pcidev);

 free_irq(hba->pcidev->irq, hba);

 for (i = 0; i < hba->max_requests; i++) {
  if (hba->dma_coherent[i] && hba->dma_coherent_handle[i])
   dma_free_coherent(&hba->pcidev->dev,
     hba->req_size + 0x20,
     hba->dma_coherent[i],
     hba->dma_coherent_handle[i]);
  else
   break;
 }

 hba->ops->internal_memfree(hba);

 hba->ops->unmap_pci_bar(hba);

 pci_release_regions(hba->pcidev);
 pci_set_drvdata(hba->pcidev, ((void*)0));
 pci_disable_device(hba->pcidev);

 scsi_host_put(host);
}
