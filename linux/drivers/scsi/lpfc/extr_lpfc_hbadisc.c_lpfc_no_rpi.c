
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_nodelist {int nlp_flag; } ;
struct lpfc_hba {scalar_t__ sli_rev; } ;


 int IOERR_SLI_ABORTED ;
 int IOSTAT_LOCAL_REJECT ;
 int LIST_HEAD (int ) ;
 scalar_t__ LPFC_SLI_REV4 ;
 int NLP_RPI_REGISTERED ;
 int completions ;
 int lpfc_fabric_abort_nport (struct lpfc_nodelist*) ;
 int lpfc_sli3_dequeue_nport_iocbs (struct lpfc_hba*,struct lpfc_nodelist*,int *) ;
 int lpfc_sli4_dequeue_nport_iocbs (struct lpfc_hba*,struct lpfc_nodelist*,int *) ;
 int lpfc_sli_cancel_iocbs (struct lpfc_hba*,int *,int ,int ) ;

__attribute__((used)) static int
lpfc_no_rpi(struct lpfc_hba *phba, struct lpfc_nodelist *ndlp)
{
 LIST_HEAD(completions);

 lpfc_fabric_abort_nport(ndlp);





 if (ndlp->nlp_flag & NLP_RPI_REGISTERED) {
  if (phba->sli_rev != LPFC_SLI_REV4)
   lpfc_sli3_dequeue_nport_iocbs(phba, ndlp, &completions);
  else
   lpfc_sli4_dequeue_nport_iocbs(phba, ndlp, &completions);
 }


 lpfc_sli_cancel_iocbs(phba, &completions, IOSTAT_LOCAL_REJECT,
         IOERR_SLI_ABORTED);

 return 0;
}
