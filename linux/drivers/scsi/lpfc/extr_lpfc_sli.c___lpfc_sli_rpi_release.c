
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lpfc_vport {TYPE_1__* phba; } ;
struct lpfc_nodelist {int nlp_flag; int nlp_rpi; } ;
struct TYPE_2__ {int ndlp_lock; } ;


 int LPFC_RPI_ALLOC_ERROR ;
 int NLP_RELEASE_RPI ;
 int NLP_UNREG_INP ;
 int lpfc_sli4_free_rpi (TYPE_1__*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
__lpfc_sli_rpi_release(struct lpfc_vport *vport, struct lpfc_nodelist *ndlp)
{
 unsigned long iflags;

 if (ndlp->nlp_flag & NLP_RELEASE_RPI) {
  lpfc_sli4_free_rpi(vport->phba, ndlp->nlp_rpi);
  spin_lock_irqsave(&vport->phba->ndlp_lock, iflags);
  ndlp->nlp_flag &= ~NLP_RELEASE_RPI;
  ndlp->nlp_rpi = LPFC_RPI_ALLOC_ERROR;
  spin_unlock_irqrestore(&vport->phba->ndlp_lock, iflags);
 }
 ndlp->nlp_flag &= ~NLP_UNREG_INP;
}
