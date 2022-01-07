
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct mvumi_hba {int request_id_enabled; TYPE_1__* pdev; int base_addr; int regs; int handshake_page_phys; int handshake_page; int * instancet; void* max_sge; int io_seq; } ;
struct TYPE_5__ {int device; int dev; } ;


 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HSP_MAX_SIZE ;
 void* MVUMI_MAX_SG_ENTRY ;
 int MV_DRIVER_NAME ;


 int dev_dbg (int *,char*,int) ;
 int dev_err (int *,char*,...) ;
 int dma_alloc_coherent (int *,int ,int *,int ) ;
 int dma_free_coherent (int *,int ,int ,int ) ;
 int kfree (int ) ;
 int mvumi_alloc_cmds (struct mvumi_hba*) ;
 int mvumi_cfg_hw_reg (struct mvumi_hba*) ;
 int mvumi_instance_9143 ;
 int mvumi_instance_9580 ;
 int mvumi_map_pci_addr (TYPE_1__*,int ) ;
 int mvumi_release_mem_resource (struct mvumi_hba*) ;
 scalar_t__ mvumi_start (struct mvumi_hba*) ;
 int mvumi_unmap_pci_addr (TYPE_1__*,int ) ;
 int pci_release_regions (TYPE_1__*) ;
 scalar_t__ pci_request_regions (TYPE_1__*,int ) ;

__attribute__((used)) static int mvumi_init_fw(struct mvumi_hba *mhba)
{
 int ret = 0;

 if (pci_request_regions(mhba->pdev, MV_DRIVER_NAME)) {
  dev_err(&mhba->pdev->dev, "IO memory region busy!\n");
  return -EBUSY;
 }
 ret = mvumi_map_pci_addr(mhba->pdev, mhba->base_addr);
 if (ret)
  goto fail_ioremap;

 switch (mhba->pdev->device) {
 case 129:
  mhba->instancet = &mvumi_instance_9143;
  mhba->io_seq = 0;
  mhba->max_sge = MVUMI_MAX_SG_ENTRY;
  mhba->request_id_enabled = 1;
  break;
 case 128:
  mhba->instancet = &mvumi_instance_9580;
  mhba->io_seq = 0;
  mhba->max_sge = MVUMI_MAX_SG_ENTRY;
  break;
 default:
  dev_err(&mhba->pdev->dev, "device 0x%x not supported!\n",
       mhba->pdev->device);
  mhba->instancet = ((void*)0);
  ret = -EINVAL;
  goto fail_alloc_mem;
 }
 dev_dbg(&mhba->pdev->dev, "device id : %04X is found.\n",
       mhba->pdev->device);
 ret = mvumi_cfg_hw_reg(mhba);
 if (ret) {
  dev_err(&mhba->pdev->dev,
   "failed to allocate memory for reg\n");
  ret = -ENOMEM;
  goto fail_alloc_mem;
 }
 mhba->handshake_page = dma_alloc_coherent(&mhba->pdev->dev,
   HSP_MAX_SIZE, &mhba->handshake_page_phys, GFP_KERNEL);
 if (!mhba->handshake_page) {
  dev_err(&mhba->pdev->dev,
   "failed to allocate memory for handshake\n");
  ret = -ENOMEM;
  goto fail_alloc_page;
 }

 if (mvumi_start(mhba)) {
  ret = -EINVAL;
  goto fail_ready_state;
 }
 ret = mvumi_alloc_cmds(mhba);
 if (ret)
  goto fail_ready_state;

 return 0;

fail_ready_state:
 mvumi_release_mem_resource(mhba);
 dma_free_coherent(&mhba->pdev->dev, HSP_MAX_SIZE,
  mhba->handshake_page, mhba->handshake_page_phys);
fail_alloc_page:
 kfree(mhba->regs);
fail_alloc_mem:
 mvumi_unmap_pci_addr(mhba->pdev, mhba->base_addr);
fail_ioremap:
 pci_release_regions(mhba->pdev);

 return ret;
}
