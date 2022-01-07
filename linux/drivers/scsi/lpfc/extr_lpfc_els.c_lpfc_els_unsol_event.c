
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct lpfc_vport {int dummy; } ;
struct lpfc_sli_ring {int dummy; } ;
struct TYPE_11__ {int* ulpWord; TYPE_4__* cont64; } ;
struct TYPE_8__ {int vpi; } ;
struct TYPE_9__ {TYPE_2__ rcvsli3; } ;
struct TYPE_12__ {scalar_t__ ulpStatus; scalar_t__ ulpCommand; int ulpBdeCount; TYPE_5__ un; TYPE_3__ unsli3; } ;
struct lpfc_iocbq {struct lpfc_dmabuf* context2; struct lpfc_dmabuf* context3; int * context1; TYPE_6__ iocb; } ;
struct TYPE_7__ {int NoRcvBuf; } ;
struct lpfc_hba {int sli3_options; struct lpfc_vport* pport; TYPE_1__ fc_stat; } ;
struct lpfc_dmabuf {int dummy; } ;
typedef int dma_addr_t ;
struct TYPE_10__ {int addrLow; int addrHigh; } ;
typedef TYPE_6__ IOCB_t ;


 scalar_t__ CMD_IOCB_RCV_ELS64_CX ;
 scalar_t__ CMD_IOCB_RCV_SEQ64_CX ;
 int IOERR_PARAM_MASK ;
 int IOERR_RCV_BUFFER_WAITING ;
 scalar_t__ IOSTAT_LOCAL_REJECT ;
 scalar_t__ IOSTAT_NEED_BUFFER ;
 int LPFC_ELS_HBQ ;
 int LPFC_SLI3_HBQ_ENABLED ;
 int LPFC_SLI3_NPIV_ENABLED ;
 int getPaddr (int ,int ) ;
 int lpfc_els_unsol_buffer (struct lpfc_hba*,struct lpfc_sli_ring*,struct lpfc_vport*,struct lpfc_iocbq*) ;
 struct lpfc_vport* lpfc_find_vport_by_vpid (struct lpfc_hba*,int) ;
 int lpfc_in_buf_free (struct lpfc_hba*,struct lpfc_dmabuf*) ;
 int lpfc_post_buffer (struct lpfc_hba*,struct lpfc_sli_ring*,int ) ;
 int lpfc_sli_hbqbuf_add_hbqs (struct lpfc_hba*,int ) ;
 struct lpfc_dmabuf* lpfc_sli_ringpostbuf_get (struct lpfc_hba*,struct lpfc_sli_ring*,int ) ;

void
lpfc_els_unsol_event(struct lpfc_hba *phba, struct lpfc_sli_ring *pring,
       struct lpfc_iocbq *elsiocb)
{
 struct lpfc_vport *vport = phba->pport;
 IOCB_t *icmd = &elsiocb->iocb;
 dma_addr_t paddr;
 struct lpfc_dmabuf *bdeBuf1 = elsiocb->context2;
 struct lpfc_dmabuf *bdeBuf2 = elsiocb->context3;

 elsiocb->context1 = ((void*)0);
 elsiocb->context2 = ((void*)0);
 elsiocb->context3 = ((void*)0);

 if (icmd->ulpStatus == IOSTAT_NEED_BUFFER) {
  lpfc_sli_hbqbuf_add_hbqs(phba, LPFC_ELS_HBQ);
 } else if (icmd->ulpStatus == IOSTAT_LOCAL_REJECT &&
     (icmd->un.ulpWord[4] & IOERR_PARAM_MASK) ==
     IOERR_RCV_BUFFER_WAITING) {
  phba->fc_stat.NoRcvBuf++;

  if (!(phba->sli3_options & LPFC_SLI3_HBQ_ENABLED))
   lpfc_post_buffer(phba, pring, 0);
  return;
 }

 if ((phba->sli3_options & LPFC_SLI3_NPIV_ENABLED) &&
     (icmd->ulpCommand == CMD_IOCB_RCV_ELS64_CX ||
      icmd->ulpCommand == CMD_IOCB_RCV_SEQ64_CX)) {
  if (icmd->unsli3.rcvsli3.vpi == 0xffff)
   vport = phba->pport;
  else
   vport = lpfc_find_vport_by_vpid(phba,
      icmd->unsli3.rcvsli3.vpi);
 }




 if (icmd->ulpBdeCount == 0)
  return;




 if (phba->sli3_options & LPFC_SLI3_HBQ_ENABLED) {
  elsiocb->context2 = bdeBuf1;
 } else {
  paddr = getPaddr(icmd->un.cont64[0].addrHigh,
     icmd->un.cont64[0].addrLow);
  elsiocb->context2 = lpfc_sli_ringpostbuf_get(phba, pring,
            paddr);
 }

 lpfc_els_unsol_buffer(phba, pring, vport, elsiocb);




 if (elsiocb->context2) {
  lpfc_in_buf_free(phba, (struct lpfc_dmabuf *)elsiocb->context2);
  elsiocb->context2 = ((void*)0);
 }


 if ((phba->sli3_options & LPFC_SLI3_HBQ_ENABLED) &&
     icmd->ulpBdeCount == 2) {
  elsiocb->context2 = bdeBuf2;
  lpfc_els_unsol_buffer(phba, pring, vport, elsiocb);

  if (elsiocb->context2) {
   lpfc_in_buf_free(phba, elsiocb->context2);
   elsiocb->context2 = ((void*)0);
  }
 }
}
