
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_sli {int mbox_tmo; } ;
struct lpfc_hba {int cfg_enable_fc4_type; int eq_delay_work; int hb_tmofunc; int eratt_poll; int fabric_block_timer; int luns; int devicelock; int fcf_conn_rec_list; int elsbuf; int fabric_iocb_list; int lpfc_scsi_buf_list_put; int scsi_buf_list_put_lock; int lpfc_scsi_buf_list_get; int scsi_buf_list_get_lock; scalar_t__ nvmet_support; int work_waitq; int wait_4_mlo_m_q; int work_list; int port_list; int port_list_lock; int ndlp_lock; int hbalock; int fast_event_count; struct lpfc_sli sli; } ;


 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int KERN_INFO ;
 int LOG_INIT ;
 int LPFC_ENABLE_FCP ;
 int LPFC_ENABLE_NVME ;
 int atomic_set (int *,int ) ;
 int init_waitqueue_head (int *) ;
 int lpfc_fabric_block_timeout ;
 int lpfc_hb_eq_delay_work ;
 int lpfc_hb_timeout ;
 int lpfc_mbox_timeout ;
 int lpfc_poll_eratt ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,char*,char*,char*) ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int
lpfc_setup_driver_resource_phase1(struct lpfc_hba *phba)
{
 struct lpfc_sli *psli = &phba->sli;




 atomic_set(&phba->fast_event_count, 0);
 spin_lock_init(&phba->hbalock);


 spin_lock_init(&phba->ndlp_lock);


 spin_lock_init(&phba->port_list_lock);
 INIT_LIST_HEAD(&phba->port_list);

 INIT_LIST_HEAD(&phba->work_list);
 init_waitqueue_head(&phba->wait_4_mlo_m_q);


 init_waitqueue_head(&phba->work_waitq);

 lpfc_printf_log(phba, KERN_INFO, LOG_INIT,
   "1403 Protocols supported %s %s %s\n",
   ((phba->cfg_enable_fc4_type & LPFC_ENABLE_FCP) ?
    "SCSI" : " "),
   ((phba->cfg_enable_fc4_type & LPFC_ENABLE_NVME) ?
    "NVME" : " "),
   (phba->nvmet_support ? "NVMET" : " "));


 spin_lock_init(&phba->scsi_buf_list_get_lock);
 INIT_LIST_HEAD(&phba->lpfc_scsi_buf_list_get);
 spin_lock_init(&phba->scsi_buf_list_put_lock);
 INIT_LIST_HEAD(&phba->lpfc_scsi_buf_list_put);


 INIT_LIST_HEAD(&phba->fabric_iocb_list);


 INIT_LIST_HEAD(&phba->elsbuf);


 INIT_LIST_HEAD(&phba->fcf_conn_rec_list);


 spin_lock_init(&phba->devicelock);
 INIT_LIST_HEAD(&phba->luns);


 timer_setup(&psli->mbox_tmo, lpfc_mbox_timeout, 0);

 timer_setup(&phba->fabric_block_timer, lpfc_fabric_block_timeout, 0);

 timer_setup(&phba->eratt_poll, lpfc_poll_eratt, 0);

 timer_setup(&phba->hb_tmofunc, lpfc_hb_timeout, 0);

 INIT_DELAYED_WORK(&phba->eq_delay_work, lpfc_hb_eq_delay_work);

 return 0;
}
