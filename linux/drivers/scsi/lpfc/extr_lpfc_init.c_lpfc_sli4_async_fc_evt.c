
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


struct lpfc_mbx_read_top {int eventTag; } ;
struct TYPE_22__ {int topology; int status; int type; int number; int fault; int logical_speed; int speed; int duplex; } ;
struct TYPE_23__ {TYPE_7__ link_state; TYPE_2__* els_wq; int conf_trunk; } ;
struct TYPE_18__ {int link_event; } ;
struct TYPE_19__ {TYPE_3__ slistat; } ;
struct lpfc_hba {int link_flag; int mbox_mem_pool; TYPE_8__ sli4_hba; int pport; TYPE_4__ sli; } ;
struct lpfc_dmabuf {int virt; int phys; } ;
struct lpfc_acqe_fc_la {int event_tag; } ;
struct TYPE_20__ {int varReadTop; } ;
struct TYPE_24__ {TYPE_5__ un; int mbxStatus; } ;
struct TYPE_21__ {TYPE_9__ mb; } ;
struct TYPE_17__ {TYPE_1__* pring; } ;
struct TYPE_16__ {int flag; } ;
struct TYPE_15__ {TYPE_6__ u; int vport; int (* mbox_cmpl ) (struct lpfc_hba*,TYPE_10__*) ;} ;
typedef TYPE_9__ MAILBOX_t ;
typedef TYPE_10__ LPFC_MBOXQ_t ;


 int GFP_KERNEL ;
 int KERN_ERR ;
 int KERN_INFO ;
 int LOG_SLI ;
 int LPFC_ASYNC_LINK_DUPLEX_FULL ;
 int LPFC_FC_LA_EVENT_TYPE_FC_LINK ;
 int LPFC_FC_LA_TYPE_LINK_DOWN ;
 int LPFC_FC_LA_TYPE_LINK_UP ;


 int LPFC_FC_LA_TYPE_TRUNKING_EVENT ;
 int LPFC_FC_LA_TYPE_UNEXP_WWPN ;
 int LPFC_STOP_IOCB_EVENT ;
 int LPFC_TRAILER_CODE_FC ;
 int LS_MDS_LINK_DOWN ;
 int LS_MDS_LOOPBACK ;
 int MBX_NOT_FINISHED ;
 int MBX_NOWAIT ;
 int MBX_SUCCESS ;
 int bf_get (int ,struct lpfc_acqe_fc_la*) ;
 int bf_set (int ,struct lpfc_mbx_read_top*,int) ;
 int kfree (struct lpfc_dmabuf*) ;
 struct lpfc_dmabuf* kmalloc (int,int ) ;
 int lpfc_acqe_fc_la_att_type ;
 int lpfc_acqe_fc_la_llink_spd ;
 int lpfc_acqe_fc_la_port_number ;
 int lpfc_acqe_fc_la_port_type ;
 int lpfc_acqe_fc_la_speed ;
 int lpfc_acqe_fc_la_topology ;
 int lpfc_acqe_link_fault ;
 int lpfc_els_flush_all_cmd (struct lpfc_hba*) ;
 int lpfc_mbuf_alloc (struct lpfc_hba*,int ,int *) ;
 int lpfc_mbx_cmpl_read_topology (struct lpfc_hba*,TYPE_10__*) ;
 int lpfc_mbx_read_top_att_type ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,...) ;
 int lpfc_read_topology (struct lpfc_hba*,TYPE_10__*,struct lpfc_dmabuf*) ;
 int lpfc_sli4_parse_latt_fault (struct lpfc_hba*,void*) ;
 int lpfc_sli4_port_speed_parse (struct lpfc_hba*,int ,int) ;
 int lpfc_sli_issue_mbox (struct lpfc_hba*,TYPE_10__*,int ) ;
 int lpfc_trailer_type ;
 int lpfc_update_trunk_link_status (struct lpfc_hba*,struct lpfc_acqe_fc_la*) ;
 scalar_t__ mempool_alloc (int ,int ) ;
 int mempool_free (TYPE_10__*,int ) ;

__attribute__((used)) static void
lpfc_sli4_async_fc_evt(struct lpfc_hba *phba, struct lpfc_acqe_fc_la *acqe_fc)
{
 struct lpfc_dmabuf *mp;
 LPFC_MBOXQ_t *pmb;
 MAILBOX_t *mb;
 struct lpfc_mbx_read_top *la;
 int rc;

 if (bf_get(lpfc_trailer_type, acqe_fc) !=
     LPFC_FC_LA_EVENT_TYPE_FC_LINK) {
  lpfc_printf_log(phba, KERN_ERR, LOG_SLI,
    "2895 Non FC link Event detected.(%d)\n",
    bf_get(lpfc_trailer_type, acqe_fc));
  return;
 }

 if (bf_get(lpfc_acqe_fc_la_att_type, acqe_fc) ==
     LPFC_FC_LA_TYPE_TRUNKING_EVENT) {
  lpfc_update_trunk_link_status(phba, acqe_fc);
  return;
 }


 phba->sli4_hba.link_state.speed =
   lpfc_sli4_port_speed_parse(phba, LPFC_TRAILER_CODE_FC,
    bf_get(lpfc_acqe_fc_la_speed, acqe_fc));
 phba->sli4_hba.link_state.duplex = LPFC_ASYNC_LINK_DUPLEX_FULL;
 phba->sli4_hba.link_state.topology =
    bf_get(lpfc_acqe_fc_la_topology, acqe_fc);
 phba->sli4_hba.link_state.status =
    bf_get(lpfc_acqe_fc_la_att_type, acqe_fc);
 phba->sli4_hba.link_state.type =
    bf_get(lpfc_acqe_fc_la_port_type, acqe_fc);
 phba->sli4_hba.link_state.number =
    bf_get(lpfc_acqe_fc_la_port_number, acqe_fc);
 phba->sli4_hba.link_state.fault =
    bf_get(lpfc_acqe_link_fault, acqe_fc);

 if (bf_get(lpfc_acqe_fc_la_att_type, acqe_fc) ==
     LPFC_FC_LA_TYPE_LINK_DOWN)
  phba->sli4_hba.link_state.logical_speed = 0;
 else if (!phba->sli4_hba.conf_trunk)
  phba->sli4_hba.link_state.logical_speed =
    bf_get(lpfc_acqe_fc_la_llink_spd, acqe_fc) * 10;

 lpfc_printf_log(phba, KERN_INFO, LOG_SLI,
   "2896 Async FC event - Speed:%dGBaud Topology:x%x "
   "LA Type:x%x Port Type:%d Port Number:%d Logical speed:"
   "%dMbps Fault:%d\n",
   phba->sli4_hba.link_state.speed,
   phba->sli4_hba.link_state.topology,
   phba->sli4_hba.link_state.status,
   phba->sli4_hba.link_state.type,
   phba->sli4_hba.link_state.number,
   phba->sli4_hba.link_state.logical_speed,
   phba->sli4_hba.link_state.fault);
 pmb = (LPFC_MBOXQ_t *)mempool_alloc(phba->mbox_mem_pool, GFP_KERNEL);
 if (!pmb) {
  lpfc_printf_log(phba, KERN_ERR, LOG_SLI,
    "2897 The mboxq allocation failed\n");
  return;
 }
 mp = kmalloc(sizeof(struct lpfc_dmabuf), GFP_KERNEL);
 if (!mp) {
  lpfc_printf_log(phba, KERN_ERR, LOG_SLI,
    "2898 The lpfc_dmabuf allocation failed\n");
  goto out_free_pmb;
 }
 mp->virt = lpfc_mbuf_alloc(phba, 0, &mp->phys);
 if (!mp->virt) {
  lpfc_printf_log(phba, KERN_ERR, LOG_SLI,
    "2899 The mbuf allocation failed\n");
  goto out_free_dmabuf;
 }


 lpfc_els_flush_all_cmd(phba);


 phba->sli4_hba.els_wq->pring->flag |= LPFC_STOP_IOCB_EVENT;


 phba->sli.slistat.link_event++;


 lpfc_read_topology(phba, pmb, mp);
 pmb->mbox_cmpl = lpfc_mbx_cmpl_read_topology;
 pmb->vport = phba->pport;

 if (phba->sli4_hba.link_state.status != LPFC_FC_LA_TYPE_LINK_UP) {
  phba->link_flag &= ~(LS_MDS_LINK_DOWN | LS_MDS_LOOPBACK);

  switch (phba->sli4_hba.link_state.status) {
  case 129:
   phba->link_flag |= LS_MDS_LINK_DOWN;
   break;
  case 128:
   phba->link_flag |= LS_MDS_LOOPBACK;
   break;
  default:
   break;
  }


  mb = &pmb->u.mb;
  mb->mbxStatus = MBX_SUCCESS;


  lpfc_sli4_parse_latt_fault(phba, (void *)acqe_fc);


  la = (struct lpfc_mbx_read_top *)&pmb->u.mb.un.varReadTop;
  la->eventTag = acqe_fc->event_tag;

  if (phba->sli4_hba.link_state.status ==
      LPFC_FC_LA_TYPE_UNEXP_WWPN) {
   bf_set(lpfc_mbx_read_top_att_type, la,
          LPFC_FC_LA_TYPE_UNEXP_WWPN);
  } else {
   bf_set(lpfc_mbx_read_top_att_type, la,
          LPFC_FC_LA_TYPE_LINK_DOWN);
  }

  lpfc_mbx_cmpl_read_topology(phba, pmb);

  return;
 }

 rc = lpfc_sli_issue_mbox(phba, pmb, MBX_NOWAIT);
 if (rc == MBX_NOT_FINISHED)
  goto out_free_dmabuf;
 return;

out_free_dmabuf:
 kfree(mp);
out_free_pmb:
 mempool_free(pmb, phba->mbox_mem_pool);
}
