
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef int temp_event_data ;
struct temp_event {int data; int event_code; int event_type; } ;
struct lpfc_vport {int dummy; } ;
struct lpfc_register {int word0; int member_0; } ;
struct TYPE_6__ {int ERR2regaddr; int ERR1regaddr; int STATUSregaddr; } ;
struct TYPE_5__ {int UEMASKLOregaddr; int UERRLOregaddr; } ;
struct TYPE_7__ {TYPE_2__ if_type2; TYPE_1__ if_type0; } ;
struct TYPE_8__ {int ue_to_sr; TYPE_3__ u; int PSMPHRregaddr; struct lpfc_register sli_intf; } ;
struct lpfc_hba {int hba_flag; void* link_state; int cfg_enable_hba_reset; int hbalock; int over_temp_state; struct lpfc_vport* pport; int sfp_alarm; TYPE_4__ sli4_hba; int pcidev; } ;
struct Scsi_Host {int dummy; } ;
typedef int portsmphr_reg ;
typedef int event_data ;


 int EIO ;
 int FC_REG_DUMP_EVENT ;
 int FC_REG_TEMPERATURE_EVENT ;
 int HBA_OVER_TEMP ;
 int HBA_RECOVERABLE_UE ;
 int KERN_ERR ;
 int KERN_WARNING ;
 int LOG_INIT ;
 int LPFC_CRIT_TEMP ;
 void* LPFC_HBA_ERROR ;
 int LPFC_MBX_NO_WAIT ;
 int LPFC_PORT_SEM_MASK ;
 int LPFC_PORT_SEM_UE_RECOVERABLE ;
 int LPFC_POST_STAGE_PORT_READY ;




 int LPFC_TRANSGRESSION_HIGH_TEMPERATURE ;
 int PCI_VENDOR_ID_EMULEX ;
 int SCSI_NL_VID_TYPE_PCI ;
 int SLIPORT_ERR1_REG_ERR_CODE_2 ;
 int SLIPORT_ERR2_REG_FORCED_DUMP ;
 int SLIPORT_ERR2_REG_FUNC_PROVISON ;
 int SLIPORT_ERR2_REG_FW_RESTART ;
 int bf_get (int ,struct lpfc_register*) ;
 int fc_get_event_number () ;
 int fc_host_post_vendor_event (struct Scsi_Host*,int ,int,char*,int) ;
 int lpfc_board_errevt_to_mgmt (struct lpfc_hba*) ;
 int lpfc_port_smphr_port_status ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,...) ;
 int lpfc_readl (int ,int*) ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 int lpfc_sli4_offline_eratt (struct lpfc_hba*) ;
 int lpfc_sli4_port_sta_fn_reset (struct lpfc_hba*,int ,int) ;
 int lpfc_sli_intf_if_type ;
 int lpfc_sliport_status_oti ;
 int memset (struct lpfc_register*,int ,int) ;
 int msleep (int) ;
 scalar_t__ pci_channel_offline (int ) ;
 int readl (int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void
lpfc_handle_eratt_s4(struct lpfc_hba *phba)
{
 struct lpfc_vport *vport = phba->pport;
 uint32_t event_data;
 struct Scsi_Host *shost;
 uint32_t if_type;
 struct lpfc_register portstat_reg = {0};
 uint32_t reg_err1, reg_err2;
 uint32_t uerrlo_reg, uemasklo_reg;
 uint32_t smphr_port_status = 0, pci_rd_rc1, pci_rd_rc2;
 bool en_rn_msg = 1;
 struct temp_event temp_event_data;
 struct lpfc_register portsmphr_reg;
 int rc, i;




 if (pci_channel_offline(phba->pcidev)) {
  lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
    "3166 pci channel is offline\n");
  lpfc_sli4_offline_eratt(phba);
  return;
 }

 memset(&portsmphr_reg, 0, sizeof(portsmphr_reg));
 if_type = bf_get(lpfc_sli_intf_if_type, &phba->sli4_hba.sli_intf);
 switch (if_type) {
 case 131:
  pci_rd_rc1 = lpfc_readl(
    phba->sli4_hba.u.if_type0.UERRLOregaddr,
    &uerrlo_reg);
  pci_rd_rc2 = lpfc_readl(
    phba->sli4_hba.u.if_type0.UEMASKLOregaddr,
    &uemasklo_reg);

  if (pci_rd_rc1 == -EIO && pci_rd_rc2 == -EIO)
   return;
  if (!(phba->hba_flag & HBA_RECOVERABLE_UE)) {
   lpfc_sli4_offline_eratt(phba);
   return;
  }
  lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
    "7623 Checking UE recoverable");

  for (i = 0; i < phba->sli4_hba.ue_to_sr / 1000; i++) {
   if (lpfc_readl(phba->sli4_hba.PSMPHRregaddr,
           &portsmphr_reg.word0))
    continue;

   smphr_port_status = bf_get(lpfc_port_smphr_port_status,
         &portsmphr_reg);
   if ((smphr_port_status & LPFC_PORT_SEM_MASK) ==
       LPFC_PORT_SEM_UE_RECOVERABLE)
    break;

   msleep(1000);
  }

  lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
    "4827 smphr_port_status x%x : Waited %dSec",
    smphr_port_status, i);


  if ((smphr_port_status & LPFC_PORT_SEM_MASK) ==
      LPFC_PORT_SEM_UE_RECOVERABLE) {
   for (i = 0; i < 20; i++) {
    msleep(1000);
    if (!lpfc_readl(phba->sli4_hba.PSMPHRregaddr,
        &portsmphr_reg.word0) &&
        (LPFC_POST_STAGE_PORT_READY ==
         bf_get(lpfc_port_smphr_port_status,
         &portsmphr_reg))) {
     rc = lpfc_sli4_port_sta_fn_reset(phba,
      LPFC_MBX_NO_WAIT, en_rn_msg);
     if (rc == 0)
      return;
     lpfc_printf_log(phba,
      KERN_ERR, LOG_INIT,
      "4215 Failed to recover UE");
     break;
    }
   }
  }
  lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
    "7624 Firmware not ready: Failing UE recovery,"
    " waited %dSec", i);
  phba->link_state = LPFC_HBA_ERROR;
  break;

 case 129:
 case 128:
  pci_rd_rc1 = lpfc_readl(
    phba->sli4_hba.u.if_type2.STATUSregaddr,
    &portstat_reg.word0);

  if (pci_rd_rc1 == -EIO) {
   lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
    "3151 PCI bus read access failure: x%x\n",
    readl(phba->sli4_hba.u.if_type2.STATUSregaddr));
   lpfc_sli4_offline_eratt(phba);
   return;
  }
  reg_err1 = readl(phba->sli4_hba.u.if_type2.ERR1regaddr);
  reg_err2 = readl(phba->sli4_hba.u.if_type2.ERR2regaddr);
  if (bf_get(lpfc_sliport_status_oti, &portstat_reg)) {
   lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
    "2889 Port Overtemperature event, "
    "taking port offline Data: x%x x%x\n",
    reg_err1, reg_err2);

   phba->sfp_alarm |= LPFC_TRANSGRESSION_HIGH_TEMPERATURE;
   temp_event_data.event_type = FC_REG_TEMPERATURE_EVENT;
   temp_event_data.event_code = LPFC_CRIT_TEMP;
   temp_event_data.data = 0xFFFFFFFF;

   shost = lpfc_shost_from_vport(phba->pport);
   fc_host_post_vendor_event(shost, fc_get_event_number(),
        sizeof(temp_event_data),
        (char *)&temp_event_data,
        SCSI_NL_VID_TYPE_PCI
        | PCI_VENDOR_ID_EMULEX);

   spin_lock_irq(&phba->hbalock);
   phba->over_temp_state = HBA_OVER_TEMP;
   spin_unlock_irq(&phba->hbalock);
   lpfc_sli4_offline_eratt(phba);
   return;
  }
  if (reg_err1 == SLIPORT_ERR1_REG_ERR_CODE_2 &&
      reg_err2 == SLIPORT_ERR2_REG_FW_RESTART) {
   lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
     "3143 Port Down: Firmware Update "
     "Detected\n");
   en_rn_msg = 0;
  } else if (reg_err1 == SLIPORT_ERR1_REG_ERR_CODE_2 &&
    reg_err2 == SLIPORT_ERR2_REG_FORCED_DUMP)
   lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
     "3144 Port Down: Debug Dump\n");
  else if (reg_err1 == SLIPORT_ERR1_REG_ERR_CODE_2 &&
    reg_err2 == SLIPORT_ERR2_REG_FUNC_PROVISON)
   lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
     "3145 Port Down: Provisioning\n");


  if (!phba->cfg_enable_hba_reset)
   return;


  rc = lpfc_sli4_port_sta_fn_reset(phba, LPFC_MBX_NO_WAIT,
    en_rn_msg);
  if (rc == 0) {

   if (reg_err1 == SLIPORT_ERR1_REG_ERR_CODE_2 &&
       reg_err2 == SLIPORT_ERR2_REG_FORCED_DUMP)
    return;
   else
    break;
  }

  lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
    "3152 Unrecoverable error\n");
  phba->link_state = LPFC_HBA_ERROR;
  break;
 case 130:
 default:
  break;
 }
 lpfc_printf_log(phba, KERN_WARNING, LOG_INIT,
   "3123 Report dump event to upper layer\n");

 lpfc_board_errevt_to_mgmt(phba);

 event_data = FC_REG_DUMP_EVENT;
 shost = lpfc_shost_from_vport(vport);
 fc_host_post_vendor_event(shost, fc_get_event_number(),
      sizeof(event_data), (char *) &event_data,
      SCSI_NL_VID_TYPE_PCI | PCI_VENDOR_ID_EMULEX);
}
