
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_device_id {int dummy; } ;
struct pci_dev {int devfn; int irq; int dev; TYPE_1__* bus; int subsystem_device; int subsystem_vendor; int device; int vendor; } ;
struct mvumi_hba {int unique_id; struct pci_dev* pdev; TYPE_2__* instancet; struct Scsi_Host* shost; int sas_discovery_mutex; int int_cmd_wait_q; int fw_outstanding; int shost_dev_list; int mhba_dev_list; int device_lock; int waiting_req_list; int res_list; int free_ob_list; int ob_data_list; int cmd_pool; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_4__ {int (* disable_intr ) (struct mvumi_hba*) ;int (* enable_intr ) (struct mvumi_hba*) ;} ;
struct TYPE_3__ {int number; } ;


 int ENOMEM ;
 int INIT_LIST_HEAD (int *) ;
 int IRQF_SHARED ;
 int atomic_set (int *,int ) ;
 int dev_dbg (int *,char*,...) ;
 int dev_err (int *,char*) ;
 int free_irq (int ,struct mvumi_hba*) ;
 int init_waitqueue_head (int *) ;
 int mutex_init (int *) ;
 int mvumi_backup_bar_addr (struct mvumi_hba*) ;
 int mvumi_init_fw (struct mvumi_hba*) ;
 int mvumi_io_attach (struct mvumi_hba*) ;
 int mvumi_isr_handler ;
 int mvumi_pci_set_master (struct pci_dev*) ;
 int mvumi_release_fw (struct mvumi_hba*) ;
 int mvumi_template ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,struct mvumi_hba*) ;
 int request_irq (int ,int ,int ,char*,struct mvumi_hba*) ;
 struct Scsi_Host* scsi_host_alloc (int *,int) ;
 int scsi_host_put (struct Scsi_Host*) ;
 struct mvumi_hba* shost_priv (struct Scsi_Host*) ;
 int stub1 (struct mvumi_hba*) ;
 int stub2 (struct mvumi_hba*) ;

__attribute__((used)) static int mvumi_probe_one(struct pci_dev *pdev, const struct pci_device_id *id)
{
 struct Scsi_Host *host;
 struct mvumi_hba *mhba;
 int ret;

 dev_dbg(&pdev->dev, " %#4.04x:%#4.04x:%#4.04x:%#4.04x: ",
   pdev->vendor, pdev->device, pdev->subsystem_vendor,
   pdev->subsystem_device);

 ret = pci_enable_device(pdev);
 if (ret)
  return ret;

 ret = mvumi_pci_set_master(pdev);
 if (ret)
  goto fail_set_dma_mask;

 host = scsi_host_alloc(&mvumi_template, sizeof(*mhba));
 if (!host) {
  dev_err(&pdev->dev, "scsi_host_alloc failed\n");
  ret = -ENOMEM;
  goto fail_alloc_instance;
 }
 mhba = shost_priv(host);

 INIT_LIST_HEAD(&mhba->cmd_pool);
 INIT_LIST_HEAD(&mhba->ob_data_list);
 INIT_LIST_HEAD(&mhba->free_ob_list);
 INIT_LIST_HEAD(&mhba->res_list);
 INIT_LIST_HEAD(&mhba->waiting_req_list);
 mutex_init(&mhba->device_lock);
 INIT_LIST_HEAD(&mhba->mhba_dev_list);
 INIT_LIST_HEAD(&mhba->shost_dev_list);
 atomic_set(&mhba->fw_outstanding, 0);
 init_waitqueue_head(&mhba->int_cmd_wait_q);
 mutex_init(&mhba->sas_discovery_mutex);

 mhba->pdev = pdev;
 mhba->shost = host;
 mhba->unique_id = pdev->bus->number << 8 | pdev->devfn;

 ret = mvumi_init_fw(mhba);
 if (ret)
  goto fail_init_fw;

 ret = request_irq(mhba->pdev->irq, mvumi_isr_handler, IRQF_SHARED,
    "mvumi", mhba);
 if (ret) {
  dev_err(&pdev->dev, "failed to register IRQ\n");
  goto fail_init_irq;
 }

 mhba->instancet->enable_intr(mhba);
 pci_set_drvdata(pdev, mhba);

 ret = mvumi_io_attach(mhba);
 if (ret)
  goto fail_io_attach;

 mvumi_backup_bar_addr(mhba);
 dev_dbg(&pdev->dev, "probe mvumi driver successfully.\n");

 return 0;

fail_io_attach:
 mhba->instancet->disable_intr(mhba);
 free_irq(mhba->pdev->irq, mhba);
fail_init_irq:
 mvumi_release_fw(mhba);
fail_init_fw:
 scsi_host_put(host);

fail_alloc_instance:
fail_set_dma_mask:
 pci_disable_device(pdev);

 return ret;
}
