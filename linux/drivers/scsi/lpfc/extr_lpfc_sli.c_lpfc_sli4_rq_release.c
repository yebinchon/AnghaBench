
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct lpfc_queue {scalar_t__ type; int hba_index; int entry_count; } ;


 scalar_t__ LPFC_DRQ ;
 scalar_t__ LPFC_HRQ ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static uint32_t
lpfc_sli4_rq_release(struct lpfc_queue *hq, struct lpfc_queue *dq)
{

 if (unlikely(!hq) || unlikely(!dq))
  return 0;

 if ((hq->type != LPFC_HRQ) || (dq->type != LPFC_DRQ))
  return 0;
 hq->hba_index = ((hq->hba_index + 1) % hq->entry_count);
 dq->hba_index = ((dq->hba_index + 1) % dq->entry_count);
 return 1;
}
