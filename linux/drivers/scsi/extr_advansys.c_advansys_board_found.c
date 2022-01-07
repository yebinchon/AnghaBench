
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_9__ ;
typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_11__ ;
typedef struct TYPE_15__ TYPE_10__ ;


typedef int ushort ;
typedef int ulong ;
struct pci_dev {scalar_t__ device; } ;
struct TYPE_25__ {int max_host_qng; int serial_number_word3; int serial_number_word2; int serial_number_word1; int scsi_reset_delay; int start_motor; int tagqng_able; int sdtr_speed4; int sdtr_speed3; int sdtr_speed2; int sdtr_speed1; int wdtr_able; int bios_ctrl; int disc_enable; int termination_lvd; int max_dvc_qng; int adapter_scsi_id; } ;
struct TYPE_15__ {int max_host_qng; int serial_number_word3; int serial_number_word2; int serial_number_word1; int scsi_reset_delay; int start_motor; int tagqng_able; int sdtr_speed4; int sdtr_speed3; int sdtr_speed2; int sdtr_speed1; int wdtr_able; int bios_ctrl; int disc_enable; int termination_lvd; int max_dvc_qng; int adapter_scsi_id; } ;
struct TYPE_16__ {int max_host_qng; int serial_number_word3; int serial_number_word2; int serial_number_word1; int scsi_reset_delay; int start_motor; int tagqng_able; int ultra_able; int sdtr_able; int wdtr_able; int bios_ctrl; int disc_enable; int termination; int max_dvc_qng; int adapter_scsi_id; } ;
struct TYPE_23__ {int max_total_qng; int * adapter_info; int max_tag_qng; int no_scam; int cntl; int start_motor; int use_cmd_qng; int disc_enable; int init_sdtr; } ;
struct TYPE_19__ {TYPE_9__ adv_38C1600_eep; TYPE_10__ adv_38C0800_eep; TYPE_11__ adv_3550_eep; TYPE_7__ asc_eep; } ;
struct TYPE_20__ {int serial3; int serial2; int serial1; int disc_enable; int termination; } ;
struct TYPE_21__ {int isa_dma_channel; int chip_scsi_id; int * adapter_info; int * max_tag_qng; int isa_dma_speed; int cmd_qng_enabled; int disc_enable; int sdtr_enable; } ;
struct TYPE_18__ {TYPE_4__ adv_dvc_cfg; TYPE_5__ asc_dvc_cfg; } ;
struct TYPE_24__ {scalar_t__ chip_type; int max_host_qng; scalar_t__ iop_base; int chip_scsi_id; TYPE_4__* cfg; int scsi_reset_wait; int start_motor; int tagqng_able; int sdtr_speed4; int sdtr_speed3; int sdtr_speed2; int sdtr_speed1; int wdtr_able; int bios_ctrl; int max_dvc_qng; int ultra_able; int sdtr_able; struct asc_board* drv_ptr; } ;
struct TYPE_22__ {int bus_type; unsigned int iop_base; int max_total_qng; int overrun_buf; int overrun_dma; scalar_t__ err_code; int init_state; TYPE_5__* cfg; int no_scam; int dvc_cntl; int start_motor; struct asc_board* drv_ptr; } ;
struct TYPE_17__ {TYPE_8__ adv_dvc_var; TYPE_6__ asc_dvc_var; } ;
struct asc_board {unsigned int ioport; int bios_signature; int bios_version; int bios_codeseg; int bios_codelen; scalar_t__ ioremap_addr; int irq; int dev; int asc_n_io_port; int init_tidmask; TYPE_3__ eep_config; TYPE_2__ dvc_cfg; TYPE_1__ dvc_var; } ;
struct Scsi_Host {int unchecked_isa_dma; unsigned int io_port; int can_queue; int sg_tablesize; int base; int dma_channel; int this_id; int max_cmd_len; scalar_t__ max_lun; scalar_t__ max_id; scalar_t__ max_channel; } ;
typedef scalar_t__ AdvPortAddr ;
typedef TYPE_6__ ASC_DVC_VAR ;
typedef TYPE_7__ ASCEEP_CONFIG ;
typedef TYPE_8__ ADV_DVC_VAR ;
typedef TYPE_9__ ADVEEP_38C1600_CONFIG ;
typedef TYPE_10__ ADVEEP_38C0800_CONFIG ;
typedef TYPE_11__ ADVEEP_3550_CONFIG ;


 scalar_t__ ADV_CHIP_ASC3550 ;
 scalar_t__ ADV_CHIP_ASC38C0800 ;
 scalar_t__ ADV_CHIP_ASC38C1600 ;
 int ADV_MAX_CDB_LEN ;
 scalar_t__ ADV_MAX_LUN ;
 int ADV_MAX_SG_LIST ;
 scalar_t__ ADV_MAX_TID ;
 int ADV_TID_TO_TIDMASK (int ) ;
 int ASC_DBG (int,char*,...) ;
 int ASC_DBG_PRT_SCSI_HOST (int,struct Scsi_Host*) ;
 int ASC_EEP_SET_CHIP_ID (TYPE_7__*,int ) ;
 int ASC_EEP_SET_DMA_SPD (TYPE_7__*,int ) ;
 int ASC_IOADR_GAP ;




 int ASC_MAX_CDB_LEN ;
 scalar_t__ ASC_MAX_LUN ;
 scalar_t__ ASC_MAX_TID ;
 scalar_t__ ASC_NARROW_BOARD (struct asc_board*) ;
 int ASC_OVERRUN_BSIZE ;
 int ASC_SG_LIST_PER_Q ;
 scalar_t__ AdvInitGetConfig (struct pci_dev*,struct Scsi_Host*) ;
 int AdvReadWordLram (scalar_t__,int ,int) ;
 int AscEnableIsaDma (int ) ;
 int AscGetChipBiosAddress (unsigned int,int) ;
 int AscInitAsc1000Driver (TYPE_6__*) ;
 scalar_t__ AscInitGetConfig (struct Scsi_Host*) ;
 scalar_t__ AscInitSetConfig (struct pci_dev*,struct Scsi_Host*) ;
 int BIOS_CODELEN ;
 int BIOS_CODESEG ;
 int BIOS_SIGNATURE ;
 int BIOS_VERSION ;
 int DMA_FROM_DEVICE ;
 int DRV_NAME ;
 int EBUSY ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_SHARED ;
 int KERN_ERR ;
 int NO_ISA_DMA ;
 scalar_t__ PCI_DEVICE_ID_38C0800_REV1 ;
 scalar_t__ PCI_DEVICE_ID_ASP_ABP940UW ;
 int SG_ALL ;
 int advansys_interrupt ;
 int advansys_wide_free_mem (struct asc_board*) ;
 scalar_t__ advansys_wide_init_chip (struct Scsi_Host*) ;
 int dma_unmap_single (int ,int ,int ,int ) ;
 int free_dma (int ) ;
 int free_irq (int ,struct Scsi_Host*) ;
 scalar_t__ inp (unsigned int) ;
 scalar_t__ inpw (unsigned int) ;
 int iounmap (scalar_t__) ;
 int kfree (int ) ;
 int kzalloc (int ,int ) ;
 scalar_t__ pci_ioremap_bar (struct pci_dev*,int) ;
 int pci_resource_len (struct pci_dev*,int) ;
 scalar_t__ pci_resource_start (struct pci_dev*,int) ;
 int request_dma (int ,int ) ;
 int request_irq (int ,int ,int,int ,struct Scsi_Host*) ;
 int scsi_add_host (struct Scsi_Host*,int ) ;
 int scsi_scan_host (struct Scsi_Host*) ;
 int shost_printk (int ,struct Scsi_Host*,char*,long,...) ;
 struct asc_board* shost_priv (struct Scsi_Host*) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static int advansys_board_found(struct Scsi_Host *shost, unsigned int iop,
    int bus_type)
{
 struct pci_dev *pdev;
 struct asc_board *boardp = shost_priv(shost);
 ASC_DVC_VAR *asc_dvc_varp = ((void*)0);
 ADV_DVC_VAR *adv_dvc_varp = ((void*)0);
 int share_irq, warn_code, ret;

 pdev = (bus_type == 129) ? to_pci_dev(boardp->dev) : ((void*)0);

 if (ASC_NARROW_BOARD(boardp)) {
  ASC_DBG(1, "narrow board\n");
  asc_dvc_varp = &boardp->dvc_var.asc_dvc_var;
  asc_dvc_varp->bus_type = bus_type;
  asc_dvc_varp->drv_ptr = boardp;
  asc_dvc_varp->cfg = &boardp->dvc_cfg.asc_dvc_cfg;
  asc_dvc_varp->iop_base = iop;
 } else {
 }

 if (ASC_NARROW_BOARD(boardp)) {




  switch (asc_dvc_varp->bus_type) {
  default:
   shost_printk(KERN_ERR, shost, "unknown adapter type: "
     "%d\n", asc_dvc_varp->bus_type);
   shost->unchecked_isa_dma = 0;
   share_irq = 0;
   break;
  }







  ASC_DBG(2, "AscInitGetConfig()\n");
  ret = AscInitGetConfig(shost) ? -ENODEV : 0;
 } else {
  share_irq = 0;
  ret = -ENODEV;

 }

 if (ret)
  goto err_unmap;





 if (ASC_NARROW_BOARD(boardp)) {

  ASCEEP_CONFIG *ep;




  boardp->init_tidmask |=
      ADV_TID_TO_TIDMASK(asc_dvc_varp->cfg->chip_scsi_id);




  ep = &boardp->eep_config.asc_eep;

  ep->init_sdtr = asc_dvc_varp->cfg->sdtr_enable;
  ep->disc_enable = asc_dvc_varp->cfg->disc_enable;
  ep->use_cmd_qng = asc_dvc_varp->cfg->cmd_qng_enabled;
  ASC_EEP_SET_DMA_SPD(ep, asc_dvc_varp->cfg->isa_dma_speed);
  ep->start_motor = asc_dvc_varp->start_motor;
  ep->cntl = asc_dvc_varp->dvc_cntl;
  ep->no_scam = asc_dvc_varp->no_scam;
  ep->max_total_qng = asc_dvc_varp->max_total_qng;
  ASC_EEP_SET_CHIP_ID(ep, asc_dvc_varp->cfg->chip_scsi_id);

  ep->max_tag_qng = asc_dvc_varp->cfg->max_tag_qng[0];
  ep->adapter_info[0] = asc_dvc_varp->cfg->adapter_info[0];
  ep->adapter_info[1] = asc_dvc_varp->cfg->adapter_info[1];
  ep->adapter_info[2] = asc_dvc_varp->cfg->adapter_info[2];
  ep->adapter_info[3] = asc_dvc_varp->cfg->adapter_info[3];
  ep->adapter_info[4] = asc_dvc_varp->cfg->adapter_info[4];
  ep->adapter_info[5] = asc_dvc_varp->cfg->adapter_info[5];




  ASC_DBG(2, "AscInitSetConfig()\n");
  ret = AscInitSetConfig(pdev, shost) ? -ENODEV : 0;
  if (ret)
   goto err_unmap;
 } else {
  ADVEEP_3550_CONFIG *ep_3550;
  ADVEEP_38C0800_CONFIG *ep_38C0800;
  ADVEEP_38C1600_CONFIG *ep_38C1600;




  if (adv_dvc_varp->chip_type == ADV_CHIP_ASC3550) {
   ep_3550 = &boardp->eep_config.adv_3550_eep;

   ep_3550->adapter_scsi_id = adv_dvc_varp->chip_scsi_id;
   ep_3550->max_host_qng = adv_dvc_varp->max_host_qng;
   ep_3550->max_dvc_qng = adv_dvc_varp->max_dvc_qng;
   ep_3550->termination = adv_dvc_varp->cfg->termination;
   ep_3550->disc_enable = adv_dvc_varp->cfg->disc_enable;
   ep_3550->bios_ctrl = adv_dvc_varp->bios_ctrl;
   ep_3550->wdtr_able = adv_dvc_varp->wdtr_able;
   ep_3550->sdtr_able = adv_dvc_varp->sdtr_able;
   ep_3550->ultra_able = adv_dvc_varp->ultra_able;
   ep_3550->tagqng_able = adv_dvc_varp->tagqng_able;
   ep_3550->start_motor = adv_dvc_varp->start_motor;
   ep_3550->scsi_reset_delay =
       adv_dvc_varp->scsi_reset_wait;
   ep_3550->serial_number_word1 =
       adv_dvc_varp->cfg->serial1;
   ep_3550->serial_number_word2 =
       adv_dvc_varp->cfg->serial2;
   ep_3550->serial_number_word3 =
       adv_dvc_varp->cfg->serial3;
  } else if (adv_dvc_varp->chip_type == ADV_CHIP_ASC38C0800) {
   ep_38C0800 = &boardp->eep_config.adv_38C0800_eep;

   ep_38C0800->adapter_scsi_id =
       adv_dvc_varp->chip_scsi_id;
   ep_38C0800->max_host_qng = adv_dvc_varp->max_host_qng;
   ep_38C0800->max_dvc_qng = adv_dvc_varp->max_dvc_qng;
   ep_38C0800->termination_lvd =
       adv_dvc_varp->cfg->termination;
   ep_38C0800->disc_enable =
       adv_dvc_varp->cfg->disc_enable;
   ep_38C0800->bios_ctrl = adv_dvc_varp->bios_ctrl;
   ep_38C0800->wdtr_able = adv_dvc_varp->wdtr_able;
   ep_38C0800->tagqng_able = adv_dvc_varp->tagqng_able;
   ep_38C0800->sdtr_speed1 = adv_dvc_varp->sdtr_speed1;
   ep_38C0800->sdtr_speed2 = adv_dvc_varp->sdtr_speed2;
   ep_38C0800->sdtr_speed3 = adv_dvc_varp->sdtr_speed3;
   ep_38C0800->sdtr_speed4 = adv_dvc_varp->sdtr_speed4;
   ep_38C0800->tagqng_able = adv_dvc_varp->tagqng_able;
   ep_38C0800->start_motor = adv_dvc_varp->start_motor;
   ep_38C0800->scsi_reset_delay =
       adv_dvc_varp->scsi_reset_wait;
   ep_38C0800->serial_number_word1 =
       adv_dvc_varp->cfg->serial1;
   ep_38C0800->serial_number_word2 =
       adv_dvc_varp->cfg->serial2;
   ep_38C0800->serial_number_word3 =
       adv_dvc_varp->cfg->serial3;
  } else {
   ep_38C1600 = &boardp->eep_config.adv_38C1600_eep;

   ep_38C1600->adapter_scsi_id =
       adv_dvc_varp->chip_scsi_id;
   ep_38C1600->max_host_qng = adv_dvc_varp->max_host_qng;
   ep_38C1600->max_dvc_qng = adv_dvc_varp->max_dvc_qng;
   ep_38C1600->termination_lvd =
       adv_dvc_varp->cfg->termination;
   ep_38C1600->disc_enable =
       adv_dvc_varp->cfg->disc_enable;
   ep_38C1600->bios_ctrl = adv_dvc_varp->bios_ctrl;
   ep_38C1600->wdtr_able = adv_dvc_varp->wdtr_able;
   ep_38C1600->tagqng_able = adv_dvc_varp->tagqng_able;
   ep_38C1600->sdtr_speed1 = adv_dvc_varp->sdtr_speed1;
   ep_38C1600->sdtr_speed2 = adv_dvc_varp->sdtr_speed2;
   ep_38C1600->sdtr_speed3 = adv_dvc_varp->sdtr_speed3;
   ep_38C1600->sdtr_speed4 = adv_dvc_varp->sdtr_speed4;
   ep_38C1600->tagqng_able = adv_dvc_varp->tagqng_able;
   ep_38C1600->start_motor = adv_dvc_varp->start_motor;
   ep_38C1600->scsi_reset_delay =
       adv_dvc_varp->scsi_reset_wait;
   ep_38C1600->serial_number_word1 =
       adv_dvc_varp->cfg->serial1;
   ep_38C1600->serial_number_word2 =
       adv_dvc_varp->cfg->serial2;
   ep_38C1600->serial_number_word3 =
       adv_dvc_varp->cfg->serial3;
  }




  boardp->init_tidmask |=
      ADV_TID_TO_TIDMASK(adv_dvc_varp->chip_scsi_id);
 }






 shost->max_channel = 0;
 if (ASC_NARROW_BOARD(boardp)) {
  shost->max_id = ASC_MAX_TID + 1;
  shost->max_lun = ASC_MAX_LUN + 1;
  shost->max_cmd_len = ASC_MAX_CDB_LEN;

  shost->io_port = asc_dvc_varp->iop_base;
  boardp->asc_n_io_port = ASC_IOADR_GAP;
  shost->this_id = asc_dvc_varp->cfg->chip_scsi_id;


  shost->can_queue = asc_dvc_varp->max_total_qng;
 } else {
  shost->max_id = ADV_MAX_TID + 1;
  shost->max_lun = ADV_MAX_LUN + 1;
  shost->max_cmd_len = ADV_MAX_CDB_LEN;







  shost->io_port = iop;

  shost->this_id = adv_dvc_varp->chip_scsi_id;


  shost->can_queue = adv_dvc_varp->max_host_qng;
 }





 if (ASC_NARROW_BOARD(boardp)) {






  shost->sg_tablesize =
      (((asc_dvc_varp->max_total_qng - 2) / 2) *
       ASC_SG_LIST_PER_Q) + 1;
 } else {
  shost->sg_tablesize = ADV_MAX_SG_LIST;
 }







 if (shost->sg_tablesize > SG_ALL) {
  shost->sg_tablesize = SG_ALL;
 }

 ASC_DBG(1, "sg_tablesize: %d\n", shost->sg_tablesize);


 if (ASC_NARROW_BOARD(boardp)) {
  shost->base = AscGetChipBiosAddress(asc_dvc_varp->iop_base,
          asc_dvc_varp->bus_type);
 } else {




  AdvReadWordLram(adv_dvc_varp->iop_base,
    BIOS_SIGNATURE, boardp->bios_signature);
  AdvReadWordLram(adv_dvc_varp->iop_base,
    BIOS_VERSION, boardp->bios_version);
  AdvReadWordLram(adv_dvc_varp->iop_base,
    BIOS_CODESEG, boardp->bios_codeseg);
  AdvReadWordLram(adv_dvc_varp->iop_base,
    BIOS_CODELEN, boardp->bios_codelen);

  ASC_DBG(1, "bios_signature 0x%x, bios_version 0x%x\n",
    boardp->bios_signature, boardp->bios_version);

  ASC_DBG(1, "bios_codeseg 0x%x, bios_codelen 0x%x\n",
    boardp->bios_codeseg, boardp->bios_codelen);





  if (boardp->bios_signature == 0x55AA) {




   shost->base = ((ulong)boardp->bios_codeseg << 4);
  } else {
   shost->base = 0;
  }
 }






 shost->dma_channel = NO_ISA_DMA;
 ASC_DBG(2, "request_irq(%d, %p)\n", boardp->irq, shost);

 ret = request_irq(boardp->irq, advansys_interrupt, share_irq,
     DRV_NAME, shost);

 if (ret) {
  if (ret == -EBUSY) {
   shost_printk(KERN_ERR, shost, "request_irq(): IRQ 0x%x "
     "already in use\n", boardp->irq);
  } else if (ret == -EINVAL) {
   shost_printk(KERN_ERR, shost, "request_irq(): IRQ 0x%x "
     "not valid\n", boardp->irq);
  } else {
   shost_printk(KERN_ERR, shost, "request_irq(): IRQ 0x%x "
     "failed with %d\n", boardp->irq, ret);
  }
  goto err_free_dma;
 }




 if (ASC_NARROW_BOARD(boardp)) {
  ASC_DBG(2, "AscInitAsc1000Driver()\n");

  asc_dvc_varp->overrun_buf = kzalloc(ASC_OVERRUN_BSIZE, GFP_KERNEL);
  if (!asc_dvc_varp->overrun_buf) {
   ret = -ENOMEM;
   goto err_free_irq;
  }
  warn_code = AscInitAsc1000Driver(asc_dvc_varp);

  if (warn_code || asc_dvc_varp->err_code) {
   shost_printk(KERN_ERR, shost, "error: init_state 0x%x, "
     "warn 0x%x, error 0x%x\n",
     asc_dvc_varp->init_state, warn_code,
     asc_dvc_varp->err_code);
   if (!asc_dvc_varp->overrun_dma) {
    ret = -ENODEV;
    goto err_free_mem;
   }
  }
 } else {
  if (advansys_wide_init_chip(shost)) {
   ret = -ENODEV;
   goto err_free_mem;
  }
 }

 ASC_DBG_PRT_SCSI_HOST(2, shost);

 ret = scsi_add_host(shost, boardp->dev);
 if (ret)
  goto err_free_mem;

 scsi_scan_host(shost);
 return 0;

 err_free_mem:
 if (ASC_NARROW_BOARD(boardp)) {
  if (asc_dvc_varp->overrun_dma)
   dma_unmap_single(boardp->dev, asc_dvc_varp->overrun_dma,
      ASC_OVERRUN_BSIZE, DMA_FROM_DEVICE);
  kfree(asc_dvc_varp->overrun_buf);
 } else
  advansys_wide_free_mem(boardp);
 err_free_irq:
 free_irq(boardp->irq, shost);
 err_free_dma:




 err_unmap:
 if (boardp->ioremap_addr)
  iounmap(boardp->ioremap_addr);



 return ret;
}
