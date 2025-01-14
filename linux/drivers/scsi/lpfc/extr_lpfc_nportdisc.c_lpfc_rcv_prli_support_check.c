
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_5__ {int lsRjtRsnCodeExp; int lsRjtRsnCode; } ;
struct TYPE_6__ {int lsRjtError; TYPE_2__ b; } ;
struct ls_rjt {TYPE_3__ un; } ;
struct lpfc_vport {int nvmei_support; TYPE_1__* phba; } ;
struct lpfc_nodelist {int nlp_flag; int nlp_state; int nlp_rpi; } ;
struct lpfc_iocbq {scalar_t__ context2; } ;
struct lpfc_dmabuf {scalar_t__* virt; } ;
struct TYPE_4__ {scalar_t__ nvmet_support; } ;


 scalar_t__ ELS_CMD_NVMEPRLI ;
 scalar_t__ ELS_CMD_PRLI ;
 int KERN_WARNING ;
 int LOG_NVME_DISC ;
 int LSEXP_REQ_UNSUPPORTED ;
 int LSRJT_CMD_UNSUPPORTED ;
 int lpfc_els_rsp_reject (struct lpfc_vport*,int ,struct lpfc_iocbq*,struct lpfc_nodelist*,int *) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*,scalar_t__,int ,int ,int ) ;
 int memset (struct ls_rjt*,int ,int) ;

__attribute__((used)) static uint32_t
lpfc_rcv_prli_support_check(struct lpfc_vport *vport,
       struct lpfc_nodelist *ndlp,
       struct lpfc_iocbq *cmdiocb)
{
 struct ls_rjt stat;
 uint32_t *payload;
 uint32_t cmd;

 payload = ((struct lpfc_dmabuf *)cmdiocb->context2)->virt;
 cmd = *payload;
 if (vport->phba->nvmet_support) {

  if (cmd == ELS_CMD_PRLI)
   goto out;
 } else {

  if (!vport->nvmei_support && (cmd == ELS_CMD_NVMEPRLI))
   goto out;
 }
 return 1;
out:
 lpfc_printf_vlog(vport, KERN_WARNING, LOG_NVME_DISC,
    "6115 Rcv PRLI (%x) check failed: ndlp rpi %d "
    "state x%x flags x%x\n",
    cmd, ndlp->nlp_rpi, ndlp->nlp_state,
    ndlp->nlp_flag);
 memset(&stat, 0, sizeof(struct ls_rjt));
 stat.un.b.lsRjtRsnCode = LSRJT_CMD_UNSUPPORTED;
 stat.un.b.lsRjtRsnCodeExp = LSEXP_REQ_UNSUPPORTED;
 lpfc_els_rsp_reject(vport, stat.un.lsRjtError, cmdiocb,
       ndlp, ((void*)0));
 return 0;
}
