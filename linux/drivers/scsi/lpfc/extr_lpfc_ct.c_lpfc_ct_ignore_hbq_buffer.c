
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int ulpStatus; } ;
struct lpfc_iocbq {TYPE_1__ iocb; } ;
struct lpfc_hba {int dummy; } ;
struct lpfc_dmabuf {int dummy; } ;


 int KERN_INFO ;
 int LOG_ELS ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,int ,...) ;

__attribute__((used)) static void
lpfc_ct_ignore_hbq_buffer(struct lpfc_hba *phba, struct lpfc_iocbq *piocbq,
     struct lpfc_dmabuf *mp, uint32_t size)
{
 if (!mp) {
  lpfc_printf_log(phba, KERN_INFO, LOG_ELS,
    "0146 Ignoring unsolicited CT No HBQ "
    "status = x%x\n",
    piocbq->iocb.ulpStatus);
 }
 lpfc_printf_log(phba, KERN_INFO, LOG_ELS,
   "0145 Ignoring unsolicted CT HBQ Size:%d "
   "status = x%x\n",
   size, piocbq->iocb.ulpStatus);
}
