
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct lpfc_nodelist {int nlp_flag; int nlp_DID; } ;
struct TYPE_5__ {scalar_t__ acc_len; int ox_id; } ;
struct TYPE_6__ {TYPE_1__ rcvsli3; } ;
struct TYPE_7__ {int ulpContext; TYPE_2__ unsli3; } ;
struct lpfc_iocbq {int iocb_cmpl; scalar_t__ context2; TYPE_3__ iocb; int iotag; int retry; } ;
struct TYPE_8__ {int elsXmitACC; } ;
struct lpfc_hba {TYPE_4__ fc_stat; } ;
struct lpfc_dmabuf {scalar_t__ virt; } ;


 int ELS_CMD_ACC ;
 int IOCB_ERROR ;
 int KERN_INFO ;
 int LOG_ELS ;
 scalar_t__ LPFC_BPL_SIZE ;
 int LPFC_DISC_TRC_ELS_RSP ;
 int LPFC_ELS_RING ;
 int lpfc_cmpl_els_rsp ;
 int lpfc_debugfs_disc_trc (struct lpfc_vport*,int ,char*,int ,int ,int ) ;
 int lpfc_els_free_iocb (struct lpfc_hba*,struct lpfc_iocbq*) ;
 struct lpfc_iocbq* lpfc_prep_els_iocb (struct lpfc_vport*,int ,scalar_t__,int ,struct lpfc_nodelist*,int ,int ) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*,int ,int ) ;
 int lpfc_sli_issue_iocb (struct lpfc_hba*,int ,struct lpfc_iocbq*,int ) ;
 int memcpy (int *,int *,scalar_t__) ;

__attribute__((used)) static int
lpfc_els_rsp_echo_acc(struct lpfc_vport *vport, uint8_t *data,
        struct lpfc_iocbq *oldiocb, struct lpfc_nodelist *ndlp)
{
 struct lpfc_hba *phba = vport->phba;
 struct lpfc_iocbq *elsiocb;
 uint8_t *pcmd;
 uint16_t cmdsize;
 int rc;

 cmdsize = oldiocb->iocb.unsli3.rcvsli3.acc_len;




 if (cmdsize > LPFC_BPL_SIZE)
  cmdsize = LPFC_BPL_SIZE;
 elsiocb = lpfc_prep_els_iocb(vport, 0, cmdsize, oldiocb->retry, ndlp,
         ndlp->nlp_DID, ELS_CMD_ACC);
 if (!elsiocb)
  return 1;

 elsiocb->iocb.ulpContext = oldiocb->iocb.ulpContext;
 elsiocb->iocb.unsli3.rcvsli3.ox_id = oldiocb->iocb.unsli3.rcvsli3.ox_id;


 lpfc_printf_vlog(vport, KERN_INFO, LOG_ELS,
    "2876 Xmit ECHO ACC response tag x%x xri x%x\n",
    elsiocb->iotag, elsiocb->iocb.ulpContext);
 pcmd = (uint8_t *) (((struct lpfc_dmabuf *) elsiocb->context2)->virt);
 *((uint32_t *) (pcmd)) = ELS_CMD_ACC;
 pcmd += sizeof(uint32_t);
 memcpy(pcmd, data, cmdsize - sizeof(uint32_t));

 lpfc_debugfs_disc_trc(vport, LPFC_DISC_TRC_ELS_RSP,
  "Issue ACC ECHO:  did:x%x flg:x%x",
  ndlp->nlp_DID, ndlp->nlp_flag, 0);

 phba->fc_stat.elsXmitACC++;
 elsiocb->iocb_cmpl = lpfc_cmpl_els_rsp;

 rc = lpfc_sli_issue_iocb(phba, LPFC_ELS_RING, elsiocb, 0);
 if (rc == IOCB_ERROR) {
  lpfc_els_free_iocb(phba, elsiocb);
  return 1;
 }
 return 0;
}
