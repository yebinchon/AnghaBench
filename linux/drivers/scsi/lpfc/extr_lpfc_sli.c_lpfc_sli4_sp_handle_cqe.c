
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sli4_wcqe_xri_aborted {int dummy; } ;
struct lpfc_wcqe_release {int dummy; } ;
struct lpfc_wcqe_complete {int dummy; } ;
struct lpfc_rcqe {int dummy; } ;
struct lpfc_queue {int dummy; } ;
struct lpfc_hba {void* last_completion_time; } ;
struct lpfc_cqe {int dummy; } ;







 int KERN_ERR ;
 int LOG_SLI ;
 int bf_get (int ,struct lpfc_cqe*) ;
 void* jiffies ;
 int lpfc_cqe_code ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,int) ;
 int lpfc_sli4_pcimem_bcopy (struct lpfc_cqe*,struct lpfc_cqe*,int) ;
 int lpfc_sli4_sp_handle_abort_xri_wcqe (struct lpfc_hba*,struct lpfc_queue*,struct sli4_wcqe_xri_aborted*) ;
 int lpfc_sli4_sp_handle_els_wcqe (struct lpfc_hba*,struct lpfc_queue*,struct lpfc_wcqe_complete*) ;
 int lpfc_sli4_sp_handle_rcqe (struct lpfc_hba*,struct lpfc_rcqe*) ;
 int lpfc_sli4_sp_handle_rel_wcqe (struct lpfc_hba*,struct lpfc_wcqe_release*) ;

__attribute__((used)) static bool
lpfc_sli4_sp_handle_cqe(struct lpfc_hba *phba, struct lpfc_queue *cq,
    struct lpfc_cqe *cqe)
{
 struct lpfc_cqe cqevt;
 bool workposted = 0;


 lpfc_sli4_pcimem_bcopy(cqe, &cqevt, sizeof(struct lpfc_cqe));


 switch (bf_get(lpfc_cqe_code, &cqevt)) {
 case 132:

  phba->last_completion_time = jiffies;
  workposted = lpfc_sli4_sp_handle_els_wcqe(phba, cq,
    (struct lpfc_wcqe_complete *)&cqevt);
  break;
 case 129:

  lpfc_sli4_sp_handle_rel_wcqe(phba,
    (struct lpfc_wcqe_release *)&cqevt);
  break;
 case 128:

  phba->last_completion_time = jiffies;
  workposted = lpfc_sli4_sp_handle_abort_xri_wcqe(phba, cq,
    (struct sli4_wcqe_xri_aborted *)&cqevt);
  break;
 case 131:
 case 130:

  phba->last_completion_time = jiffies;
  workposted = lpfc_sli4_sp_handle_rcqe(phba,
    (struct lpfc_rcqe *)&cqevt);
  break;
 default:
  lpfc_printf_log(phba, KERN_ERR, LOG_SLI,
    "0388 Not a valid WCQE code: x%x\n",
    bf_get(lpfc_cqe_code, &cqevt));
  break;
 }
 return workposted;
}
