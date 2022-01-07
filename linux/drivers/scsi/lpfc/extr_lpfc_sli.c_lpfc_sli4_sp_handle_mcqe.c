
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_queue {int CQ_mbox; } ;
struct lpfc_mcqe {int dummy; } ;
struct lpfc_hba {int dummy; } ;
struct lpfc_cqe {int dummy; } ;


 int bf_get (int ,struct lpfc_mcqe*) ;
 int lpfc_sli4_pcimem_bcopy (struct lpfc_cqe*,struct lpfc_mcqe*,int) ;
 int lpfc_sli4_sp_handle_async_event (struct lpfc_hba*,struct lpfc_mcqe*) ;
 int lpfc_sli4_sp_handle_mbox_event (struct lpfc_hba*,struct lpfc_mcqe*) ;
 int lpfc_trailer_async ;

__attribute__((used)) static bool
lpfc_sli4_sp_handle_mcqe(struct lpfc_hba *phba, struct lpfc_queue *cq,
    struct lpfc_cqe *cqe)
{
 struct lpfc_mcqe mcqe;
 bool workposted;

 cq->CQ_mbox++;


 lpfc_sli4_pcimem_bcopy(cqe, &mcqe, sizeof(struct lpfc_mcqe));


 if (!bf_get(lpfc_trailer_async, &mcqe))
  workposted = lpfc_sli4_sp_handle_mbox_event(phba, &mcqe);
 else
  workposted = lpfc_sli4_sp_handle_async_event(phba, &mcqe);
 return workposted;
}
