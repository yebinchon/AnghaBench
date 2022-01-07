
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
struct TYPE_11__ {scalar_t__ bdeFlags; int bdeSize; } ;
struct TYPE_12__ {void* w; TYPE_3__ f; } ;
struct ulp_bde64 {TYPE_4__ tus; void* addrHigh; void* addrLow; } ;
struct lpfc_vport {int fc_flag; size_t vpi; int port_state; int fc_myDID; struct lpfc_hba* phba; } ;
struct lpfc_nodelist {int nlp_rpi; int nlp_DID; } ;
struct TYPE_13__ {int bdeSize; void* bdeFlags; void* addrLow; void* addrHigh; } ;
struct TYPE_15__ {int myID; scalar_t__ remoteID; TYPE_5__ bdl; } ;
struct TYPE_9__ {int bdeSize; void* bdeFlags; void* addrLow; void* addrHigh; } ;
struct TYPE_10__ {scalar_t__ xmit_els_remoteID; TYPE_1__ bdl; } ;
struct TYPE_14__ {TYPE_7__ elsreq64; TYPE_2__ xseq64; } ;
struct TYPE_16__ {int ulpTimeout; int ulpBdeCount; int ulpLe; int ulpCt_l; scalar_t__ ulpCt_h; int ulpContext; TYPE_6__ un; int ulpClass; int ulpCommand; } ;
struct lpfc_iocbq {int iocb_flag; int iotag; scalar_t__ drvrTimeout; struct lpfc_vport* vport; scalar_t__ retry; struct lpfc_dmabuf* context3; struct lpfc_dmabuf* context2; int context1; TYPE_8__ iocb; } ;
struct lpfc_hba {int hba_flag; int fc_ratov; int sli3_options; scalar_t__ sli_rev; int * vpi_ids; } ;
struct lpfc_dmabuf {int phys; void* virt; int list; } ;
typedef TYPE_8__ IOCB_t ;


 scalar_t__ BUFF_TYPE_BDE_64 ;
 void* BUFF_TYPE_BLP_64 ;
 int CLASS3 ;
 int CMD_ELS_REQUEST64_CR ;
 int CMD_XMIT_ELS_RSP64_CX ;
 scalar_t__ ELS_CMD_ECHO ;



 int FCELSSIZE ;
 int FC_PT2PT ;
 int FF_DEF_RATOV ;
 scalar_t__ Fabric_DID ;
 int GFP_KERNEL ;
 int HBA_FIP_SUPPORT ;
 int INIT_LIST_HEAD (int *) ;
 int KERN_INFO ;
 int LOG_ELS ;
 scalar_t__ LPFC_DRVR_TIMEOUT ;
 int LPFC_ELS_ID_FDISC ;
 int LPFC_ELS_ID_FLOGI ;
 int LPFC_ELS_ID_LOGO ;
 int LPFC_FIP_ELS_ID_MASK ;
 int LPFC_FIP_ELS_ID_SHIFT ;
 int LPFC_SLI3_NPIV_ENABLED ;
 scalar_t__ LPFC_SLI_REV4 ;
 int MEM_PRI ;
 int kfree (struct lpfc_dmabuf*) ;
 struct lpfc_dmabuf* kmalloc (int,int ) ;
 void* le32_to_cpu (void*) ;
 int list_add (int *,int *) ;
 int lpfc_is_link_up (struct lpfc_hba*) ;
 void* lpfc_mbuf_alloc (struct lpfc_hba*,int ,int *) ;
 int lpfc_mbuf_free (struct lpfc_hba*,void*,int ) ;
 int lpfc_nlp_get (struct lpfc_nodelist*) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*,scalar_t__,scalar_t__,int ,int ,int ,int,...) ;
 struct lpfc_iocbq* lpfc_sli_get_iocbq (struct lpfc_hba*) ;
 int lpfc_sli_release_iocbq (struct lpfc_hba*,struct lpfc_iocbq*) ;
 void* putPaddrHigh (int ) ;
 void* putPaddrLow (int ) ;

struct lpfc_iocbq *
lpfc_prep_els_iocb(struct lpfc_vport *vport, uint8_t expectRsp,
     uint16_t cmdSize, uint8_t retry,
     struct lpfc_nodelist *ndlp, uint32_t did,
     uint32_t elscmd)
{
 struct lpfc_hba *phba = vport->phba;
 struct lpfc_iocbq *elsiocb;
 struct lpfc_dmabuf *pcmd, *prsp, *pbuflist;
 struct ulp_bde64 *bpl;
 IOCB_t *icmd;


 if (!lpfc_is_link_up(phba))
  return ((void*)0);


 elsiocb = lpfc_sli_get_iocbq(phba);

 if (elsiocb == ((void*)0))
  return ((void*)0);





 if ((did == Fabric_DID) &&
  (phba->hba_flag & HBA_FIP_SUPPORT) &&
  ((elscmd == 129) ||
   (elscmd == 130) ||
   (elscmd == 128)))
  switch (elscmd) {
  case 129:
  elsiocb->iocb_flag |=
   ((LPFC_ELS_ID_FLOGI << LPFC_FIP_ELS_ID_SHIFT)
     & LPFC_FIP_ELS_ID_MASK);
  break;
  case 130:
  elsiocb->iocb_flag |=
   ((LPFC_ELS_ID_FDISC << LPFC_FIP_ELS_ID_SHIFT)
     & LPFC_FIP_ELS_ID_MASK);
  break;
  case 128:
  elsiocb->iocb_flag |=
   ((LPFC_ELS_ID_LOGO << LPFC_FIP_ELS_ID_SHIFT)
     & LPFC_FIP_ELS_ID_MASK);
  break;
  }
 else
  elsiocb->iocb_flag &= ~LPFC_FIP_ELS_ID_MASK;

 icmd = &elsiocb->iocb;



 pcmd = kmalloc(sizeof(struct lpfc_dmabuf), GFP_KERNEL);
 if (pcmd)
  pcmd->virt = lpfc_mbuf_alloc(phba, MEM_PRI, &pcmd->phys);
 if (!pcmd || !pcmd->virt)
  goto els_iocb_free_pcmb_exit;

 INIT_LIST_HEAD(&pcmd->list);


 if (expectRsp) {
  prsp = kmalloc(sizeof(struct lpfc_dmabuf), GFP_KERNEL);
  if (prsp)
   prsp->virt = lpfc_mbuf_alloc(phba, MEM_PRI,
           &prsp->phys);
  if (!prsp || !prsp->virt)
   goto els_iocb_free_prsp_exit;
  INIT_LIST_HEAD(&prsp->list);
 } else
  prsp = ((void*)0);


 pbuflist = kmalloc(sizeof(struct lpfc_dmabuf), GFP_KERNEL);
 if (pbuflist)
  pbuflist->virt = lpfc_mbuf_alloc(phba, MEM_PRI,
       &pbuflist->phys);
 if (!pbuflist || !pbuflist->virt)
  goto els_iocb_free_pbuf_exit;

 INIT_LIST_HEAD(&pbuflist->list);

 if (expectRsp) {
  icmd->un.elsreq64.bdl.addrHigh = putPaddrHigh(pbuflist->phys);
  icmd->un.elsreq64.bdl.addrLow = putPaddrLow(pbuflist->phys);
  icmd->un.elsreq64.bdl.bdeFlags = BUFF_TYPE_BLP_64;
  icmd->un.elsreq64.bdl.bdeSize = (2 * sizeof(struct ulp_bde64));

  icmd->un.elsreq64.remoteID = did;
  icmd->ulpCommand = CMD_ELS_REQUEST64_CR;
  if (elscmd == 129)
   icmd->ulpTimeout = FF_DEF_RATOV * 2;
  else if (elscmd == 128)
   icmd->ulpTimeout = phba->fc_ratov;
  else
   icmd->ulpTimeout = phba->fc_ratov * 2;
 } else {
  icmd->un.xseq64.bdl.addrHigh = putPaddrHigh(pbuflist->phys);
  icmd->un.xseq64.bdl.addrLow = putPaddrLow(pbuflist->phys);
  icmd->un.xseq64.bdl.bdeFlags = BUFF_TYPE_BLP_64;
  icmd->un.xseq64.bdl.bdeSize = sizeof(struct ulp_bde64);
  icmd->un.xseq64.xmit_els_remoteID = did;
  icmd->ulpCommand = CMD_XMIT_ELS_RSP64_CX;
 }
 icmd->ulpBdeCount = 1;
 icmd->ulpLe = 1;
 icmd->ulpClass = CLASS3;






 if ((phba->sli3_options & LPFC_SLI3_NPIV_ENABLED) ||
  ((phba->sli_rev == LPFC_SLI_REV4) &&
      (vport->fc_flag & FC_PT2PT))) {

  if (expectRsp) {
   icmd->un.elsreq64.myID = vport->fc_myDID;


   icmd->ulpContext = phba->vpi_ids[vport->vpi];
  }

  icmd->ulpCt_h = 0;

  if (elscmd == ELS_CMD_ECHO)
   icmd->ulpCt_l = 0;
  else
   icmd->ulpCt_l = 1;
 }

 bpl = (struct ulp_bde64 *) pbuflist->virt;
 bpl->addrLow = le32_to_cpu(putPaddrLow(pcmd->phys));
 bpl->addrHigh = le32_to_cpu(putPaddrHigh(pcmd->phys));
 bpl->tus.f.bdeSize = cmdSize;
 bpl->tus.f.bdeFlags = 0;
 bpl->tus.w = le32_to_cpu(bpl->tus.w);

 if (expectRsp) {
  bpl++;
  bpl->addrLow = le32_to_cpu(putPaddrLow(prsp->phys));
  bpl->addrHigh = le32_to_cpu(putPaddrHigh(prsp->phys));
  bpl->tus.f.bdeSize = FCELSSIZE;
  bpl->tus.f.bdeFlags = BUFF_TYPE_BDE_64;
  bpl->tus.w = le32_to_cpu(bpl->tus.w);
 }


 elsiocb->context1 = lpfc_nlp_get(ndlp);
 if (!elsiocb->context1)
  goto els_iocb_free_pbuf_exit;
 elsiocb->context2 = pcmd;
 elsiocb->context3 = pbuflist;
 elsiocb->retry = retry;
 elsiocb->vport = vport;
 elsiocb->drvrTimeout = (phba->fc_ratov << 1) + LPFC_DRVR_TIMEOUT;

 if (prsp) {
  list_add(&prsp->list, &pcmd->list);
 }
 if (expectRsp) {

  lpfc_printf_vlog(vport, KERN_INFO, LOG_ELS,
     "0116 Xmit ELS command x%x to remote "
     "NPORT x%x I/O tag: x%x, port state:x%x "
     "rpi x%x fc_flag:x%x\n",
     elscmd, did, elsiocb->iotag,
     vport->port_state, ndlp->nlp_rpi,
     vport->fc_flag);
 } else {

  lpfc_printf_vlog(vport, KERN_INFO, LOG_ELS,
     "0117 Xmit ELS response x%x to remote "
     "NPORT x%x I/O tag: x%x, size: x%x "
     "port_state x%x  rpi x%x fc_flag x%x\n",
     elscmd, ndlp->nlp_DID, elsiocb->iotag,
     cmdSize, vport->port_state,
     ndlp->nlp_rpi, vport->fc_flag);
 }
 return elsiocb;

els_iocb_free_pbuf_exit:
 if (expectRsp)
  lpfc_mbuf_free(phba, prsp->virt, prsp->phys);
 kfree(pbuflist);

els_iocb_free_prsp_exit:
 lpfc_mbuf_free(phba, pcmd->virt, pcmd->phys);
 kfree(prsp);

els_iocb_free_pcmb_exit:
 kfree(pcmd);
 lpfc_sli_release_iocbq(phba, elsiocb);
 return ((void*)0);
}
