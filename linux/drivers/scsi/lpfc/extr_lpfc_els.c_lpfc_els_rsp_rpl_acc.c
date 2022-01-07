
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_10__ {int portName; void* portID; scalar_t__ portNum; } ;
struct TYPE_12__ {TYPE_3__ port_num_blk; scalar_t__ index; void* listLen; } ;
struct lpfc_vport {int fc_myDID; TYPE_5__ fc_portname; struct lpfc_hba* phba; } ;
struct lpfc_nodelist {int nlp_rpi; int nlp_state; int nlp_flag; int nlp_DID; } ;
struct lpfc_name {int dummy; } ;
struct TYPE_8__ {int ox_id; } ;
struct TYPE_9__ {TYPE_1__ rcvsli3; } ;
struct TYPE_13__ {int ulpContext; TYPE_2__ unsli3; } ;
struct lpfc_iocbq {int iocb_cmpl; TYPE_6__ iocb; int iotag; scalar_t__ context2; int retry; } ;
struct TYPE_11__ {int elsXmitACC; } ;
struct lpfc_hba {TYPE_4__ fc_stat; } ;
struct lpfc_dmabuf {int * virt; } ;
typedef TYPE_5__ RPL_RSP ;
typedef TYPE_6__ IOCB_t ;


 int ELS_CMD_ACC ;
 scalar_t__ IOCB_ERROR ;
 int KERN_INFO ;
 int LOG_ELS ;
 int LPFC_ELS_RING ;
 int be16_to_cpu (int) ;
 void* be32_to_cpu (int) ;
 int lpfc_cmpl_els_rsp ;
 int lpfc_els_free_iocb (struct lpfc_hba*,struct lpfc_iocbq*) ;
 struct lpfc_iocbq* lpfc_prep_els_iocb (struct lpfc_vport*,int ,int,int ,struct lpfc_nodelist*,int ,int ) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ lpfc_sli_issue_iocb (struct lpfc_hba*,int ,struct lpfc_iocbq*,int ) ;
 int memcpy (int *,TYPE_5__*,int) ;

__attribute__((used)) static int
lpfc_els_rsp_rpl_acc(struct lpfc_vport *vport, uint16_t cmdsize,
       struct lpfc_iocbq *oldiocb, struct lpfc_nodelist *ndlp)
{
 struct lpfc_hba *phba = vport->phba;
 IOCB_t *icmd, *oldcmd;
 RPL_RSP rpl_rsp;
 struct lpfc_iocbq *elsiocb;
 uint8_t *pcmd;

 elsiocb = lpfc_prep_els_iocb(vport, 0, cmdsize, oldiocb->retry, ndlp,
         ndlp->nlp_DID, ELS_CMD_ACC);

 if (!elsiocb)
  return 1;

 icmd = &elsiocb->iocb;
 oldcmd = &oldiocb->iocb;
 icmd->ulpContext = oldcmd->ulpContext;
 icmd->unsli3.rcvsli3.ox_id = oldcmd->unsli3.rcvsli3.ox_id;

 pcmd = (((struct lpfc_dmabuf *) elsiocb->context2)->virt);
 *((uint32_t *) (pcmd)) = ELS_CMD_ACC;
 pcmd += sizeof(uint16_t);
 *((uint16_t *)(pcmd)) = be16_to_cpu(cmdsize);
 pcmd += sizeof(uint16_t);


 rpl_rsp.listLen = be32_to_cpu(1);
 rpl_rsp.index = 0;
 rpl_rsp.port_num_blk.portNum = 0;
 rpl_rsp.port_num_blk.portID = be32_to_cpu(vport->fc_myDID);
 memcpy(&rpl_rsp.port_num_blk.portName, &vport->fc_portname,
     sizeof(struct lpfc_name));
 memcpy(pcmd, &rpl_rsp, cmdsize - sizeof(uint32_t));

 lpfc_printf_vlog(vport, KERN_INFO, LOG_ELS,
    "0120 Xmit ELS RPL ACC response tag x%x "
    "xri x%x, did x%x, nlp_flag x%x, nlp_state x%x, "
    "rpi x%x\n",
    elsiocb->iotag, elsiocb->iocb.ulpContext,
    ndlp->nlp_DID, ndlp->nlp_flag, ndlp->nlp_state,
    ndlp->nlp_rpi);
 elsiocb->iocb_cmpl = lpfc_cmpl_els_rsp;
 phba->fc_stat.elsXmitACC++;
 if (lpfc_sli_issue_iocb(phba, LPFC_ELS_RING, elsiocb, 0) ==
     IOCB_ERROR) {
  lpfc_els_free_iocb(phba, elsiocb);
  return 1;
 }
 return 0;
}
