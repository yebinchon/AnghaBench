
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pci_dev {scalar_t__ device; } ;
struct TYPE_6__ {int err_code; int bus_type; int init_state; TYPE_2__* cfg; int bug_fix_cntl; int iop_base; } ;
struct TYPE_4__ {TYPE_3__ asc_dvc_var; } ;
struct asc_board {TYPE_1__ dvc_var; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_5__ {int cmd_qng_enabled; int disc_enable; scalar_t__ chip_scsi_id; int isa_dma_speed; int isa_dma_channel; } ;
typedef int PortAddr ;
typedef TYPE_3__ ASC_DVC_VAR ;


 int ASC_BUG_FIX_ASYN_USE_SYN ;
 int ASC_BUG_FIX_IF_NOT_DWB ;
 unsigned short ASC_CFG_MSW_CLR_MASK ;
 scalar_t__ ASC_CHIP_VER_ASYN_BUG ;
 int ASC_IERR_BAD_SIGNATURE ;
 int ASC_IERR_SET_SCSI_ID ;
 int ASC_INIT_STATE_BEG_SET_CFG ;
 int ASC_INIT_STATE_END_SET_CFG ;
 int ASC_IS_ISA ;
 int ASC_IS_ISAPNP ;
 int ASC_IS_PCI ;
 int ASC_IS_PCI_ULTRA ;

 unsigned short ASC_WARN_CFG_MSW_RECOVER ;




 int AscFindSignature (int ) ;
 unsigned short AscGetChipCfgMsw (int ) ;
 int AscGetChipStatus (int ) ;
 scalar_t__ AscGetChipVersion (int ,int) ;
 int AscSetChipCfgMsw (int ,unsigned short) ;
 scalar_t__ AscSetChipScsiID (int ,scalar_t__) ;
 int AscSetIsaDmaChannel (int ,int ) ;
 int AscSetIsaDmaSpeed (int ,int ) ;
 int CSW_AUTO_CONFIG ;
 int KERN_ERR ;
 int KERN_WARNING ;
 scalar_t__ PCI_DEVICE_ID_ASP_1200A ;
 scalar_t__ PCI_DEVICE_ID_ASP_ABP940 ;
 int shost_printk (int ,struct Scsi_Host*,char*,...) ;
 struct asc_board* shost_priv (struct Scsi_Host*) ;

__attribute__((used)) static int AscInitSetConfig(struct pci_dev *pdev, struct Scsi_Host *shost)
{
 struct asc_board *board = shost_priv(shost);
 ASC_DVC_VAR *asc_dvc = &board->dvc_var.asc_dvc_var;
 PortAddr iop_base = asc_dvc->iop_base;
 unsigned short cfg_msw;
 unsigned short warn_code = 0;

 asc_dvc->init_state |= ASC_INIT_STATE_BEG_SET_CFG;
 if (asc_dvc->err_code != 0)
  return asc_dvc->err_code;
 if (!AscFindSignature(asc_dvc->iop_base)) {
  asc_dvc->err_code = ASC_IERR_BAD_SIGNATURE;
  return asc_dvc->err_code;
 }

 cfg_msw = AscGetChipCfgMsw(iop_base);
 if ((cfg_msw & ASC_CFG_MSW_CLR_MASK) != 0) {
  cfg_msw &= ~ASC_CFG_MSW_CLR_MASK;
  warn_code |= ASC_WARN_CFG_MSW_RECOVER;
  AscSetChipCfgMsw(iop_base, cfg_msw);
 }
 if ((asc_dvc->cfg->cmd_qng_enabled & asc_dvc->cfg->disc_enable) !=
     asc_dvc->cfg->cmd_qng_enabled) {
  asc_dvc->cfg->disc_enable = asc_dvc->cfg->cmd_qng_enabled;
  warn_code |= 131;
 }
 if (AscGetChipStatus(iop_base) & CSW_AUTO_CONFIG) {
  warn_code |= 132;
 }
 if (asc_dvc->bus_type == ASC_IS_ISAPNP) {
  if (AscGetChipVersion(iop_base, asc_dvc->bus_type)
      == ASC_CHIP_VER_ASYN_BUG) {
   asc_dvc->bug_fix_cntl |= ASC_BUG_FIX_ASYN_USE_SYN;
  }
 }
 if (AscSetChipScsiID(iop_base, asc_dvc->cfg->chip_scsi_id) !=
     asc_dvc->cfg->chip_scsi_id) {
  asc_dvc->err_code |= ASC_IERR_SET_SCSI_ID;
 }







 asc_dvc->init_state |= ASC_INIT_STATE_END_SET_CFG;

 switch (warn_code) {
 case 0:
  break;
 case 129:
  shost_printk(KERN_WARNING, shost, "I/O port address "
    "modified\n");
  break;
 case 132:
  shost_printk(KERN_WARNING, shost, "I/O port increment switch "
    "enabled\n");
  break;
 case 130:
  shost_printk(KERN_WARNING, shost, "EEPROM checksum error\n");
  break;
 case 128:
  shost_printk(KERN_WARNING, shost, "IRQ modified\n");
  break;
 case 131:
  shost_printk(KERN_WARNING, shost, "tag queuing w/o "
    "disconnects\n");
  break;
 default:
  shost_printk(KERN_WARNING, shost, "unknown warning: 0x%x\n",
    warn_code);
  break;
 }

 if (asc_dvc->err_code != 0)
  shost_printk(KERN_ERR, shost, "error 0x%x at init_state "
   "0x%x\n", asc_dvc->err_code, asc_dvc->init_state);

 return asc_dvc->err_code;
}
