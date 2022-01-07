
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef int mbox64_t ;
struct TYPE_6__ {int flag; int una_mbox64_dma; int una_mbox64; int dev; int scb_list; int buf_dma_handle; int mega_buffer; TYPE_1__* host; scalar_t__ base; } ;
typedef TYPE_2__ adapter_t ;
struct TYPE_5__ {int host_no; int base; } ;


 int BOARD_MEMMAP ;
 int MEGA_BUFFER_SIZE ;
 int __megaraid_shutdown (TYPE_2__*) ;
 int hba_count ;
 int iounmap (void*) ;
 int kfree (int ) ;
 int mega_free_sgl (TYPE_2__*) ;
 int mega_proc_dir_entry ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_free_consistent (int ,int,int ,int ) ;
 struct Scsi_Host* pci_get_drvdata (struct pci_dev*) ;
 int release_mem_region (int ,int) ;
 int release_region (scalar_t__,int) ;
 int remove_proc_subtree (char*,int ) ;
 int scsi_host_put (struct Scsi_Host*) ;
 int scsi_remove_host (struct Scsi_Host*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static void
megaraid_remove_one(struct pci_dev *pdev)
{
 struct Scsi_Host *host = pci_get_drvdata(pdev);
 adapter_t *adapter = (adapter_t *)host->hostdata;
 char buf[12] = { 0 };

 scsi_remove_host(host);

 __megaraid_shutdown(adapter);


 if (adapter->flag & BOARD_MEMMAP) {
  iounmap((void *)adapter->base);
  release_mem_region(adapter->host->base, 128);
 } else
  release_region(adapter->base, 16);

 mega_free_sgl(adapter);

 sprintf(buf, "hba%d", adapter->host->host_no);
 remove_proc_subtree(buf, mega_proc_dir_entry);

 pci_free_consistent(adapter->dev, MEGA_BUFFER_SIZE,
   adapter->mega_buffer, adapter->buf_dma_handle);
 kfree(adapter->scb_list);
 pci_free_consistent(adapter->dev, sizeof(mbox64_t),
   adapter->una_mbox64, adapter->una_mbox64_dma);

 scsi_host_put(host);
 pci_disable_device(pdev);

 hba_count--;
}
