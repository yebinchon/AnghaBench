
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u16 ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int device; int devfn; int dev; TYPE_1__* bus; } ;
struct megasas_instance {int unique_id; scalar_t__ adapter_type; struct pci_dev* pdev; scalar_t__ msix_vectors; TYPE_3__* instancet; scalar_t__ requestorId; TYPE_2__* host_device_list_buf; int enable_fw_dev_list; scalar_t__ unload; void* vf_affiliation; int vf_affiliation_h; void* vf_affiliation_111; int vf_affiliation_111_h; scalar_t__ PlasmaFW111; int init_id; struct Scsi_Host* host; int fw_reset_no_pci_access; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
struct MR_LD_VF_AFFILIATION_111 {int dummy; } ;
struct MR_LD_VF_AFFILIATION {int dummy; } ;
struct TYPE_8__ {size_t max_index; struct megasas_instance** instance; int count; } ;
struct TYPE_7__ {int (* disable_intr ) (struct megasas_instance*) ;} ;
struct TYPE_6__ {scalar_t__ count; } ;
struct TYPE_5__ {int number; } ;


 int ENODEV ;
 int GFP_KERNEL ;
 int KERN_DEBUG ;
 int MAX_LOGICAL_DRIVES ;
 int MEGASAS_DEFAULT_INIT_ID ;
 scalar_t__ MFI_SERIES ;
 int PCI_CAP_ID_MSIX ;






 scalar_t__ PCI_MSIX_FLAGS ;
 int PCI_MSIX_FLAGS_ENABLE ;
 int atomic_set (int *,int ) ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*) ;
 int dev_printk (int ,int *,char*) ;
 int dev_warn (int *,char*) ;
 void* dma_alloc_coherent (int *,int,int *,int ) ;
 int megasas_destroy_irqs (struct megasas_instance*) ;
 int megasas_get_ld_vf_affiliation (struct megasas_instance*,int) ;
 scalar_t__ megasas_init_fw (struct megasas_instance*) ;
 scalar_t__ megasas_io_attach (struct megasas_instance*) ;
 TYPE_4__ megasas_mgmt_info ;
 int megasas_release_fusion (struct megasas_instance*) ;
 int megasas_release_mfi (struct megasas_instance*) ;
 int megasas_set_adapter_type (struct megasas_instance*) ;
 int megasas_setup_debugfs (struct megasas_instance*) ;
 scalar_t__ megasas_start_aen (struct megasas_instance*) ;
 int megasas_template ;
 int memset (struct megasas_instance*,int ,int) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_enable_device_mem (struct pci_dev*) ;
 int pci_find_capability (struct pci_dev*,int ) ;
 int pci_free_irq_vectors (struct pci_dev*) ;
 int pci_read_config_word (struct pci_dev*,scalar_t__,int*) ;
 int pci_set_drvdata (struct pci_dev*,struct megasas_instance*) ;
 int pci_set_master (struct pci_dev*) ;
 int pci_write_config_word (struct pci_dev*,scalar_t__,int) ;
 scalar_t__ reset_devices ;
 struct Scsi_Host* scsi_host_alloc (int *,int) ;
 int scsi_host_put (struct Scsi_Host*) ;
 int scsi_scan_host (struct Scsi_Host*) ;
 int stub1 (struct megasas_instance*) ;

__attribute__((used)) static int megasas_probe_one(struct pci_dev *pdev,
        const struct pci_device_id *id)
{
 int rval, pos;
 struct Scsi_Host *host;
 struct megasas_instance *instance;
 u16 control = 0;

 switch (pdev->device) {
 case 133:
 case 131:
 case 130:
 case 128:
  dev_err(&pdev->dev, "Adapter is in non secure mode\n");
  return 1;
 case 132:
 case 129:
  dev_info(&pdev->dev, "Adapter is in configurable secure mode\n");
  break;
 }


 if (reset_devices) {
  pos = pci_find_capability(pdev, PCI_CAP_ID_MSIX);
  if (pos) {
   pci_read_config_word(pdev, pos + PCI_MSIX_FLAGS,
          &control);
   if (control & PCI_MSIX_FLAGS_ENABLE) {
    dev_info(&pdev->dev, "resetting MSI-X\n");
    pci_write_config_word(pdev,
            pos + PCI_MSIX_FLAGS,
            control &
            ~PCI_MSIX_FLAGS_ENABLE);
   }
  }
 }




 rval = pci_enable_device_mem(pdev);

 if (rval) {
  return rval;
 }

 pci_set_master(pdev);

 host = scsi_host_alloc(&megasas_template,
          sizeof(struct megasas_instance));

 if (!host) {
  dev_printk(KERN_DEBUG, &pdev->dev, "scsi_host_alloc failed\n");
  goto fail_alloc_instance;
 }

 instance = (struct megasas_instance *)host->hostdata;
 memset(instance, 0, sizeof(*instance));
 atomic_set(&instance->fw_reset_no_pci_access, 0);




 instance->pdev = pdev;
 instance->host = host;
 instance->unique_id = pdev->bus->number << 8 | pdev->devfn;
 instance->init_id = MEGASAS_DEFAULT_INIT_ID;

 megasas_set_adapter_type(instance);




 if (megasas_init_fw(instance))
  goto fail_init_mfi;

 if (instance->requestorId) {
  if (instance->PlasmaFW111) {
   instance->vf_affiliation_111 =
    dma_alloc_coherent(&pdev->dev,
     sizeof(struct MR_LD_VF_AFFILIATION_111),
     &instance->vf_affiliation_111_h,
     GFP_KERNEL);
   if (!instance->vf_affiliation_111)
    dev_warn(&pdev->dev, "Can't allocate "
           "memory for VF affiliation buffer\n");
  } else {
   instance->vf_affiliation =
    dma_alloc_coherent(&pdev->dev,
     (MAX_LOGICAL_DRIVES + 1) *
     sizeof(struct MR_LD_VF_AFFILIATION),
     &instance->vf_affiliation_h,
     GFP_KERNEL);
   if (!instance->vf_affiliation)
    dev_warn(&pdev->dev, "Can't allocate "
           "memory for VF affiliation buffer\n");
  }
 }




 pci_set_drvdata(pdev, instance);





 megasas_mgmt_info.count++;
 megasas_mgmt_info.instance[megasas_mgmt_info.max_index] = instance;
 megasas_mgmt_info.max_index++;




 if (megasas_io_attach(instance))
  goto fail_io_attach;

 instance->unload = 0;



 if (!instance->enable_fw_dev_list ||
     (instance->host_device_list_buf->count > 0))
  scsi_scan_host(host);




 if (megasas_start_aen(instance)) {
  dev_printk(KERN_DEBUG, &pdev->dev, "start aen failed\n");
  goto fail_start_aen;
 }

 megasas_setup_debugfs(instance);


 if (instance->requestorId)
  megasas_get_ld_vf_affiliation(instance, 1);

 return 0;

fail_start_aen:
fail_io_attach:
 megasas_mgmt_info.count--;
 megasas_mgmt_info.max_index--;
 megasas_mgmt_info.instance[megasas_mgmt_info.max_index] = ((void*)0);

 instance->instancet->disable_intr(instance);
 megasas_destroy_irqs(instance);

 if (instance->adapter_type != MFI_SERIES)
  megasas_release_fusion(instance);
 else
  megasas_release_mfi(instance);
 if (instance->msix_vectors)
  pci_free_irq_vectors(instance->pdev);
fail_init_mfi:
 scsi_host_put(host);
fail_alloc_instance:
 pci_disable_device(pdev);

 return -ENODEV;
}
