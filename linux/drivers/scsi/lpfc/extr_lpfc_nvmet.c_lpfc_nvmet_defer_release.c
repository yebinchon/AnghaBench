
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lpfc_nvmet_rcv_ctx {int flag; int list; int oxid; int ctxlock; } ;
struct TYPE_2__ {int abts_nvmet_buf_list_lock; int lpfc_abts_nvmet_ctx_list; int t_active_list_lock; } ;
struct lpfc_hba {TYPE_1__ sli4_hba; } ;


 int KERN_INFO ;
 int LOG_NVME_ABTS ;
 int LPFC_NVMET_CTX_RLS ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 int lockdep_assert_held (int *) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void
lpfc_nvmet_defer_release(struct lpfc_hba *phba, struct lpfc_nvmet_rcv_ctx *ctxp)
{
 lockdep_assert_held(&ctxp->ctxlock);

 lpfc_printf_log(phba, KERN_INFO, LOG_NVME_ABTS,
   "6313 NVMET Defer ctx release oxid x%x flg x%x\n",
   ctxp->oxid, ctxp->flag);

 if (ctxp->flag & LPFC_NVMET_CTX_RLS)
  return;

 ctxp->flag |= LPFC_NVMET_CTX_RLS;
 spin_lock(&phba->sli4_hba.t_active_list_lock);
 list_del(&ctxp->list);
 spin_unlock(&phba->sli4_hba.t_active_list_lock);
 spin_lock(&phba->sli4_hba.abts_nvmet_buf_list_lock);
 list_add_tail(&ctxp->list, &phba->sli4_hba.lpfc_abts_nvmet_ctx_list);
 spin_unlock(&phba->sli4_hba.abts_nvmet_buf_list_lock);
}
