
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_hba {int fc_eventTag; } ;
struct lpfc_acqe_dcbx {int event_tag; } ;


 int KERN_ERR ;
 int LOG_SLI ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*) ;

__attribute__((used)) static void
lpfc_sli4_async_dcbx_evt(struct lpfc_hba *phba,
    struct lpfc_acqe_dcbx *acqe_dcbx)
{
 phba->fc_eventTag = acqe_dcbx->event_tag;
 lpfc_printf_log(phba, KERN_ERR, LOG_SLI,
   "0290 The SLI4 DCBX asynchronous event is not "
   "handled yet\n");
}
