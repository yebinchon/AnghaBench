
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int temp_event_data ;
struct temp_event {scalar_t__ data; int event_code; int event_type; } ;
struct lpfc_vport {int dummy; } ;
struct lpfc_sli {int sli_flag; } ;
struct lpfc_hba {int hba_flag; int work_hs; int * work_status; int hbalock; int over_temp_state; struct lpfc_vport* pport; scalar_t__ MBslimaddr; int cfg_enable_hba_reset; int pcidev; struct lpfc_sli sli; } ;
struct Scsi_Host {int dummy; } ;
typedef int event_data ;


 int DEFER_ERATT ;
 scalar_t__ FC_REG_DUMP_EVENT ;
 int FC_REG_TEMPERATURE_EVENT ;
 int HBA_OVER_TEMP ;
 int HS_CRIT_TEMP ;
 int HS_FFER6 ;
 int HS_FFER8 ;
 int KERN_ERR ;
 int KERN_INFO ;
 int LOG_INIT ;
 int LOG_LINK_EVENT ;
 int LPFC_CRIT_TEMP ;
 int LPFC_MBX_NO_WAIT ;
 int LPFC_SLI_ACTIVE ;
 int PCI_VENDOR_ID_EMULEX ;
 int SCSI_NL_VID_TYPE_PCI ;
 scalar_t__ TEMPERATURE_OFFSET ;
 int fc_get_event_number () ;
 int fc_host_post_vendor_event (struct Scsi_Host*,int ,int,char*,int) ;
 int lpfc_board_errevt_to_mgmt (struct lpfc_hba*) ;
 int lpfc_handle_deferred_eratt (struct lpfc_hba*) ;
 int lpfc_offline (struct lpfc_hba*) ;
 int lpfc_offline_eratt (struct lpfc_hba*) ;
 int lpfc_offline_prep (struct lpfc_hba*,int ) ;
 scalar_t__ lpfc_online (struct lpfc_hba*) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,int,int,int ,...) ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 int lpfc_sli_abort_fcp_rings (struct lpfc_hba*) ;
 int lpfc_sli_brdrestart (struct lpfc_hba*) ;
 int lpfc_unblock_mgmt_io (struct lpfc_hba*) ;
 scalar_t__ pci_channel_offline (int ) ;
 unsigned long readl (scalar_t__) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void
lpfc_handle_eratt_s3(struct lpfc_hba *phba)
{
 struct lpfc_vport *vport = phba->pport;
 struct lpfc_sli *psli = &phba->sli;
 uint32_t event_data;
 unsigned long temperature;
 struct temp_event temp_event_data;
 struct Scsi_Host *shost;




 if (pci_channel_offline(phba->pcidev)) {
  spin_lock_irq(&phba->hbalock);
  phba->hba_flag &= ~DEFER_ERATT;
  spin_unlock_irq(&phba->hbalock);
  return;
 }


 if (!phba->cfg_enable_hba_reset)
  return;


 lpfc_board_errevt_to_mgmt(phba);

 if (phba->hba_flag & DEFER_ERATT)
  lpfc_handle_deferred_eratt(phba);

 if ((phba->work_hs & HS_FFER6) || (phba->work_hs & HS_FFER8)) {
  if (phba->work_hs & HS_FFER6)

   lpfc_printf_log(phba, KERN_INFO, LOG_LINK_EVENT,
     "1301 Re-establishing Link "
     "Data: x%x x%x x%x\n",
     phba->work_hs, phba->work_status[0],
     phba->work_status[1]);
  if (phba->work_hs & HS_FFER8)

   lpfc_printf_log(phba, KERN_INFO, LOG_LINK_EVENT,
     "2861 Host Authentication device "
     "zeroization Data:x%x x%x x%x\n",
     phba->work_hs, phba->work_status[0],
     phba->work_status[1]);

  spin_lock_irq(&phba->hbalock);
  psli->sli_flag &= ~LPFC_SLI_ACTIVE;
  spin_unlock_irq(&phba->hbalock);







  lpfc_sli_abort_fcp_rings(phba);





  lpfc_offline_prep(phba, LPFC_MBX_NO_WAIT);
  lpfc_offline(phba);
  lpfc_sli_brdrestart(phba);
  if (lpfc_online(phba) == 0) {
   lpfc_unblock_mgmt_io(phba);
   return;
  }
  lpfc_unblock_mgmt_io(phba);
 } else if (phba->work_hs & HS_CRIT_TEMP) {
  temperature = readl(phba->MBslimaddr + TEMPERATURE_OFFSET);
  temp_event_data.event_type = FC_REG_TEMPERATURE_EVENT;
  temp_event_data.event_code = LPFC_CRIT_TEMP;
  temp_event_data.data = (uint32_t)temperature;

  lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
    "0406 Adapter maximum temperature exceeded "
    "(%ld), taking this port offline "
    "Data: x%x x%x x%x\n",
    temperature, phba->work_hs,
    phba->work_status[0], phba->work_status[1]);

  shost = lpfc_shost_from_vport(phba->pport);
  fc_host_post_vendor_event(shost, fc_get_event_number(),
       sizeof(temp_event_data),
       (char *) &temp_event_data,
       SCSI_NL_VID_TYPE_PCI
       | PCI_VENDOR_ID_EMULEX);

  spin_lock_irq(&phba->hbalock);
  phba->over_temp_state = HBA_OVER_TEMP;
  spin_unlock_irq(&phba->hbalock);
  lpfc_offline_eratt(phba);

 } else {




  lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
    "0457 Adapter Hardware Error "
    "Data: x%x x%x x%x\n",
    phba->work_hs,
    phba->work_status[0], phba->work_status[1]);

  event_data = FC_REG_DUMP_EVENT;
  shost = lpfc_shost_from_vport(vport);
  fc_host_post_vendor_event(shost, fc_get_event_number(),
    sizeof(event_data), (char *) &event_data,
    SCSI_NL_VID_TYPE_PCI | PCI_VENDOR_ID_EMULEX);

  lpfc_offline_eratt(phba);
 }
 return;
}
