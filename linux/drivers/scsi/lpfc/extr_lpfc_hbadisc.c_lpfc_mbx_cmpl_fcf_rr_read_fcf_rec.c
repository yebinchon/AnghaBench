
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_7__ {scalar_t__ fcf_indx; } ;
struct TYPE_6__ {scalar_t__ fcf_indx; } ;
struct TYPE_5__ {scalar_t__ fcf_flag; TYPE_3__ failover_rec; TYPE_2__ current_rec; } ;
struct lpfc_hba {scalar_t__ link_state; scalar_t__ hba_flag; TYPE_1__ fcf; int hbalock; int pport; } ;
struct lpfc_fcf_rec {int dummy; } ;
struct fcf_record {int dummy; } ;
typedef int LPFC_MBOXQ_t ;


 int BOOT_ENABLE ;
 scalar_t__ FCF_DISCOVERY ;
 scalar_t__ FCF_RR_INPROG ;
 int KERN_INFO ;
 int KERN_WARNING ;
 int LOG_FIP ;
 scalar_t__ LPFC_LINK_UP ;
 int __lpfc_update_fcf_record (struct lpfc_hba*,TYPE_3__*,struct fcf_record*,scalar_t__,scalar_t__,int ) ;
 scalar_t__ bf_get (int ,struct fcf_record*) ;
 int lpfc_fcf_record_fcf_index ;
 int lpfc_issue_init_vfi (int ) ;
 int lpfc_match_fcf_conn_list (struct lpfc_hba*,struct fcf_record*,scalar_t__*,scalar_t__*,scalar_t__*) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,scalar_t__,...) ;
 int lpfc_register_fcf (struct lpfc_hba*) ;
 struct fcf_record* lpfc_sli4_fcf_rec_mbox_parse (struct lpfc_hba*,int *,scalar_t__*) ;
 int lpfc_sli4_fcf_rr_index_clear (struct lpfc_hba*,scalar_t__) ;
 scalar_t__ lpfc_sli4_fcf_rr_next_index_get (struct lpfc_hba*) ;
 int lpfc_sli4_fcf_rr_next_proc (int ,scalar_t__) ;
 int lpfc_sli4_log_fcf_record_info (struct lpfc_hba*,struct fcf_record*,scalar_t__,scalar_t__) ;
 int lpfc_sli4_mbox_cmd_free (struct lpfc_hba*,int *) ;
 int lpfc_unregister_fcf (struct lpfc_hba*) ;
 int lpfc_unregister_fcf_rescan (struct lpfc_hba*) ;
 int memcpy (TYPE_2__*,TYPE_3__*,int) ;
 int msleep (int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void
lpfc_mbx_cmpl_fcf_rr_read_fcf_rec(struct lpfc_hba *phba, LPFC_MBOXQ_t *mboxq)
{
 struct fcf_record *new_fcf_record;
 uint32_t boot_flag, addr_mode;
 uint16_t next_fcf_index, fcf_index;
 uint16_t current_fcf_index;
 uint16_t vlan_id;
 int rc;


 if (phba->link_state < LPFC_LINK_UP) {
  spin_lock_irq(&phba->hbalock);
  phba->fcf.fcf_flag &= ~FCF_DISCOVERY;
  phba->hba_flag &= ~FCF_RR_INPROG;
  spin_unlock_irq(&phba->hbalock);
  goto out;
 }


 new_fcf_record = lpfc_sli4_fcf_rec_mbox_parse(phba, mboxq,
            &next_fcf_index);
 if (!new_fcf_record) {
  lpfc_printf_log(phba, KERN_WARNING, LOG_FIP,
    "2766 Mailbox command READ_FCF_RECORD "
    "failed to retrieve a FCF record. "
    "hba_flg x%x fcf_flg x%x\n", phba->hba_flag,
    phba->fcf.fcf_flag);
  lpfc_unregister_fcf_rescan(phba);
  goto out;
 }


 rc = lpfc_match_fcf_conn_list(phba, new_fcf_record, &boot_flag,
          &addr_mode, &vlan_id);


 lpfc_sli4_log_fcf_record_info(phba, new_fcf_record, vlan_id,
          next_fcf_index);

 fcf_index = bf_get(lpfc_fcf_record_fcf_index, new_fcf_record);
 if (!rc) {
  lpfc_printf_log(phba, KERN_INFO, LOG_FIP,
    "2848 Remove ineligible FCF (x%x) from "
    "from roundrobin bmask\n", fcf_index);

  lpfc_sli4_fcf_rr_index_clear(phba, fcf_index);

  fcf_index = lpfc_sli4_fcf_rr_next_index_get(phba);
  rc = lpfc_sli4_fcf_rr_next_proc(phba->pport, fcf_index);
  if (rc)
   goto out;
  goto error_out;
 }

 if (fcf_index == phba->fcf.current_rec.fcf_indx) {
  lpfc_printf_log(phba, KERN_INFO, LOG_FIP,
    "2760 Perform FLOGI roundrobin FCF failover: "
    "FCF (x%x) back to FCF (x%x)\n",
    phba->fcf.current_rec.fcf_indx, fcf_index);

  msleep(500);
  lpfc_issue_init_vfi(phba->pport);
  goto out;
 }


 lpfc_printf_log(phba, KERN_INFO, LOG_FIP,
   "2834 Update current FCF (x%x) with new FCF (x%x)\n",
   phba->fcf.failover_rec.fcf_indx, fcf_index);
 spin_lock_irq(&phba->hbalock);
 __lpfc_update_fcf_record(phba, &phba->fcf.failover_rec,
     new_fcf_record, addr_mode, vlan_id,
     (boot_flag ? BOOT_ENABLE : 0));
 spin_unlock_irq(&phba->hbalock);

 current_fcf_index = phba->fcf.current_rec.fcf_indx;


 lpfc_unregister_fcf(phba);


 memcpy(&phba->fcf.current_rec, &phba->fcf.failover_rec,
        sizeof(struct lpfc_fcf_rec));

 lpfc_printf_log(phba, KERN_INFO, LOG_FIP,
   "2783 Perform FLOGI roundrobin FCF failover: FCF "
   "(x%x) to FCF (x%x)\n", current_fcf_index, fcf_index);

error_out:
 lpfc_register_fcf(phba);
out:
 lpfc_sli4_mbox_cmd_free(phba, mboxq);
}
