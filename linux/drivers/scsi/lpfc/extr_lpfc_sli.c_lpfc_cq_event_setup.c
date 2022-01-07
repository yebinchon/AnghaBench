
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_hba {int dummy; } ;
struct lpfc_cq_event {int cqe; } ;


 int KERN_ERR ;
 int LOG_SLI ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*) ;
 struct lpfc_cq_event* lpfc_sli4_cq_event_alloc (struct lpfc_hba*) ;
 int memcpy (int *,void*,int) ;

inline struct lpfc_cq_event *
lpfc_cq_event_setup(struct lpfc_hba *phba, void *entry, int size)
{
 struct lpfc_cq_event *cq_event;


 cq_event = lpfc_sli4_cq_event_alloc(phba);
 if (!cq_event) {
  lpfc_printf_log(phba, KERN_ERR, LOG_SLI,
    "0602 Failed to alloc CQ_EVENT entry\n");
  return ((void*)0);
 }


 memcpy(&cq_event->cqe, entry, size);
 return cq_event;
}
