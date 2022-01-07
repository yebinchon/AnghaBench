
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_10__ ;


typedef void* uint32_t ;
struct serv_parm {int portName; } ;
struct lpfc_vport {int fc_flag; void* fc_myDID; void* port_state; int rcv_flogi_cnt; int fc_portname; struct lpfc_hba* phba; } ;
struct lpfc_nodelist {int dummy; } ;
struct lpfc_name {int dummy; } ;
struct TYPE_22__ {int ox_id; } ;
struct TYPE_23__ {TYPE_7__ rcvsli3; } ;
struct TYPE_16__ {void* remoteID; } ;
struct TYPE_17__ {TYPE_1__ elsreq64; } ;
struct TYPE_15__ {TYPE_8__ unsli3; int ulpContext; TYPE_2__ un; } ;
struct lpfc_iocbq {TYPE_10__ iocb; scalar_t__ context2; } ;
struct lpfc_hba {scalar_t__ fc_topology; scalar_t__ sli_rev; int hba_flag; int defer_flogi_acc_flag; int defer_flogi_acc_ox_id; int defer_flogi_acc_rx_id; int fc_fabparam; int mbox_mem_pool; int cfg_link_speed; int cfg_topology; } ;
struct lpfc_dmabuf {scalar_t__ virt; } ;
struct Scsi_Host {int host_lock; } ;
struct TYPE_18__ {scalar_t__ lipsr_AL_PA; } ;
struct TYPE_19__ {TYPE_3__ varInitLnk; } ;
struct TYPE_20__ {TYPE_4__ un; } ;
struct TYPE_21__ {TYPE_5__ mb; } ;
struct TYPE_24__ {struct lpfc_vport* vport; int mbox_cmpl; TYPE_6__ u; } ;
typedef TYPE_9__ LPFC_MBOXQ_t ;
typedef TYPE_10__ IOCB_t ;


 int CLASS3 ;
 int ELS_CMD_FLOGI ;
 int FC_FABRIC ;
 int FC_PT2PT ;
 int FC_PT2PT_PLOGI ;
 int FC_PUBLIC_LOOP ;
 void* Fabric_DID ;
 int GFP_KERNEL ;
 int HBA_FLOGI_ISSUED ;
 int KERN_ERR ;
 int KERN_INFO ;
 int LOG_ELS ;
 scalar_t__ LPFC_SLI_REV4 ;
 scalar_t__ LPFC_TOPOLOGY_LOOP ;
 int MBX_NOT_FINISHED ;
 int MBX_NOWAIT ;
 void* PT2PT_LocalID ;
 void* PT2PT_RemoteID ;
 int lpfc_check_sparm (struct lpfc_vport*,struct lpfc_nodelist*,struct serv_parm*,int ,int) ;
 int lpfc_els_abort_flogi (struct lpfc_hba*) ;
 int lpfc_els_rsp_acc (struct lpfc_vport*,int ,struct lpfc_iocbq*,struct lpfc_nodelist*,int *) ;
 int lpfc_init_link (struct lpfc_hba*,TYPE_9__*,int ,int ) ;
 int lpfc_linkdown (struct lpfc_hba*) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*,void*,void*,...) ;
 int lpfc_set_disctmo (struct lpfc_vport*) ;
 int lpfc_set_loopback_flag (struct lpfc_hba*) ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 int lpfc_sli_def_mbox_cmpl ;
 int lpfc_sli_issue_mbox (struct lpfc_hba*,TYPE_9__*,int ) ;
 int memcmp (int *,int *,int) ;
 int memcpy (int *,struct serv_parm*,int) ;
 TYPE_9__* mempool_alloc (int ,int ) ;
 int mempool_free (TYPE_9__*,int ) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

__attribute__((used)) static int
lpfc_els_rcv_flogi(struct lpfc_vport *vport, struct lpfc_iocbq *cmdiocb,
     struct lpfc_nodelist *ndlp)
{
 struct Scsi_Host *shost = lpfc_shost_from_vport(vport);
 struct lpfc_hba *phba = vport->phba;
 struct lpfc_dmabuf *pcmd = (struct lpfc_dmabuf *) cmdiocb->context2;
 uint32_t *lp = (uint32_t *) pcmd->virt;
 IOCB_t *icmd = &cmdiocb->iocb;
 struct serv_parm *sp;
 LPFC_MBOXQ_t *mbox;
 uint32_t cmd, did;
 int rc;
 uint32_t fc_flag = 0;
 uint32_t port_state = 0;

 cmd = *lp++;
 sp = (struct serv_parm *) lp;



 lpfc_set_disctmo(vport);

 if (phba->fc_topology == LPFC_TOPOLOGY_LOOP) {

  did = icmd->un.elsreq64.remoteID;



  lpfc_printf_vlog(vport, KERN_ERR, LOG_ELS,
     "0113 An FLOGI ELS command x%x was "
     "received from DID x%x in Loop Mode\n",
     cmd, did);
  return 1;
 }

 (void) lpfc_check_sparm(vport, ndlp, sp, CLASS3, 1);






 rc = memcmp(&vport->fc_portname, &sp->portName,
      sizeof(struct lpfc_name));

 if (!rc) {
  if (phba->sli_rev < LPFC_SLI_REV4) {
   mbox = mempool_alloc(phba->mbox_mem_pool,
          GFP_KERNEL);
   if (!mbox)
    return 1;
   lpfc_linkdown(phba);
   lpfc_init_link(phba, mbox,
           phba->cfg_topology,
           phba->cfg_link_speed);
   mbox->u.mb.un.varInitLnk.lipsr_AL_PA = 0;
   mbox->mbox_cmpl = lpfc_sli_def_mbox_cmpl;
   mbox->vport = vport;
   rc = lpfc_sli_issue_mbox(phba, mbox,
       MBX_NOWAIT);
   lpfc_set_loopback_flag(phba);
   if (rc == MBX_NOT_FINISHED)
    mempool_free(mbox, phba->mbox_mem_pool);
   return 1;
  }




  lpfc_els_abort_flogi(phba);
  return 0;

 } else if (rc > 0) {
  spin_lock_irq(shost->host_lock);
  vport->fc_flag |= FC_PT2PT_PLOGI;
  spin_unlock_irq(shost->host_lock);






  vport->fc_myDID = PT2PT_LocalID;
 } else {
  vport->fc_myDID = PT2PT_RemoteID;
 }





 spin_lock_irq(shost->host_lock);
 fc_flag = vport->fc_flag;
 port_state = vport->port_state;
 vport->fc_flag |= FC_PT2PT;
 vport->fc_flag &= ~(FC_FABRIC | FC_PUBLIC_LOOP);




 vport->rcv_flogi_cnt++;
 spin_unlock_irq(shost->host_lock);
 lpfc_printf_vlog(vport, KERN_INFO, LOG_ELS,
    "3311 Rcv Flogi PS x%x new PS x%x "
    "fc_flag x%x new fc_flag x%x\n",
    port_state, vport->port_state,
    fc_flag, vport->fc_flag);






 did = vport->fc_myDID;
 vport->fc_myDID = Fabric_DID;

 memcpy(&phba->fc_fabparam, sp, sizeof(struct serv_parm));


 if (!(phba->hba_flag & HBA_FLOGI_ISSUED)) {
  phba->defer_flogi_acc_rx_id = cmdiocb->iocb.ulpContext;
  phba->defer_flogi_acc_ox_id =
     cmdiocb->iocb.unsli3.rcvsli3.ox_id;

  vport->fc_myDID = did;

  lpfc_printf_vlog(vport, KERN_INFO, LOG_ELS,
     "3344 Deferring FLOGI ACC: rx_id: x%x,"
     " ox_id: x%x, hba_flag x%x\n",
     phba->defer_flogi_acc_rx_id,
     phba->defer_flogi_acc_ox_id, phba->hba_flag);

  phba->defer_flogi_acc_flag = 1;

  return 0;
 }


 lpfc_els_rsp_acc(vport, ELS_CMD_FLOGI, cmdiocb, ndlp, ((void*)0));


 vport->fc_myDID = did;

 return 0;
}
