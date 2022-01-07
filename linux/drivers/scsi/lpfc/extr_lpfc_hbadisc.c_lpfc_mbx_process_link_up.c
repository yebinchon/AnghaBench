
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct lpfc_vport {int fc_myDID; int cfg_log_verbose; int fc_flag; int port_state; } ;
struct TYPE_14__ {int bdeSize; } ;
struct TYPE_15__ {TYPE_2__ f; } ;
struct TYPE_16__ {TYPE_3__ tus; } ;
struct lpfc_mbx_read_top {TYPE_4__ lilpBde64; } ;
struct TYPE_13__ {int fcf_flag; } ;
struct lpfc_hba {int fc_linkspeed; int hba_flag; int fc_topology; int fc_topology_changed; int sli3_options; int* alpa_map; scalar_t__ sli_rev; int fc_pref_DID; int hbalock; TYPE_1__ fcf; int mbox_mem_pool; scalar_t__ cfg_enable_npiv; scalar_t__ max_vpi; int link_flag; struct lpfc_vport* pport; } ;
struct lpfc_dmabuf {int phys; int virt; } ;
struct fcf_record {int phys; int virt; } ;
struct Scsi_Host {int * host_lock; } ;
struct TYPE_17__ {int mbox_cmpl; struct lpfc_vport* vport; scalar_t__ ctx_buf; } ;
typedef TYPE_5__ LPFC_MBOXQ_t ;


 int ENODEV ;
 int FCF_INIT_DISC ;
 int FCF_TS_INPROG ;
 int FC_LBIT ;
 int FC_VPORT_FAILED ;
 int GFP_KERNEL ;
 int HBA_FCOE_MODE ;
 int HBA_FIP_SUPPORT ;
 int KERN_ERR ;
 int KERN_INFO ;
 int KERN_WARNING ;
 int LOG_DISCOVERY ;
 int LOG_FIP ;
 int LOG_LINK_EVENT ;
 int LOG_MBOX ;
 int LOG_SLI ;
 int LPFC_FCOE_FCF_DEF_INDEX ;
 int LPFC_FCOE_FCF_GET_FIRST ;
 int LPFC_LINK_SPEED_UNKNOWN ;
 int LPFC_LOCAL_CFG_LINK ;
 int LPFC_SLI3_NPIV_ENABLED ;
 scalar_t__ LPFC_SLI_REV3 ;
 int LPFC_TOPOLOGY_LOOP ;
 int LPFC_VPORT_UNKNOWN ;
 int LS_NPIV_FAB_SUPPORTED ;
 int MBX_NOT_FINISHED ;
 int MBX_NOWAIT ;
 int bf_get (int ,struct lpfc_mbx_read_top*) ;
 int kfree (struct lpfc_dmabuf*) ;
 struct lpfc_dmabuf* kzalloc (int,int ) ;
 int lpfc_config_link (struct lpfc_hba*,TYPE_5__*) ;
 int lpfc_issue_clear_la (struct lpfc_hba*,struct lpfc_vport*) ;
 int lpfc_linkup (struct lpfc_hba*) ;
 int lpfc_mbuf_free (struct lpfc_hba*,int ,int ) ;
 int lpfc_mbx_cmpl_local_config_link ;
 int lpfc_mbx_cmpl_read_sparam ;
 int lpfc_mbx_read_top_alpa_granted ;
 int lpfc_mbx_read_top_il ;
 int lpfc_mbx_read_top_link_spd ;
 int lpfc_mbx_read_top_topology ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int,char*,...) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int,char*,int ,TYPE_5__*,TYPE_5__*) ;
 int lpfc_read_sparam (struct lpfc_hba*,TYPE_5__*,int ) ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 int lpfc_sli4_add_fcf_record (struct lpfc_hba*,struct lpfc_dmabuf*) ;
 int lpfc_sli4_build_dflt_fcf_record (struct lpfc_hba*,struct lpfc_dmabuf*,int ) ;
 int lpfc_sli4_clear_fcf_rr_bmask (struct lpfc_hba*) ;
 int lpfc_sli4_fcf_scan_read_fcf_rec (struct lpfc_hba*,int ) ;
 int lpfc_sli_issue_mbox (struct lpfc_hba*,TYPE_5__*,int ) ;
 int lpfc_vport_set_state (struct lpfc_vport*,int ) ;
 TYPE_5__* mempool_alloc (int ,int ) ;
 int mempool_free (TYPE_5__*,int ) ;
 int memset (int*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void
lpfc_mbx_process_link_up(struct lpfc_hba *phba, struct lpfc_mbx_read_top *la)
{
 struct lpfc_vport *vport = phba->pport;
 LPFC_MBOXQ_t *sparam_mbox, *cfglink_mbox = ((void*)0);
 struct Scsi_Host *shost;
 int i;
 struct lpfc_dmabuf *mp;
 int rc;
 struct fcf_record *fcf_record;
 uint32_t fc_flags = 0;
 unsigned long iflags;

 spin_lock_irqsave(&phba->hbalock, iflags);
 phba->fc_linkspeed = bf_get(lpfc_mbx_read_top_link_spd, la);

 if (!(phba->hba_flag & HBA_FCOE_MODE)) {
  switch (bf_get(lpfc_mbx_read_top_link_spd, la)) {
  case 133:
  case 132:
  case 130:
  case 128:
  case 136:
  case 134:
  case 131:
  case 129:
  case 135:
   break;
  default:
   phba->fc_linkspeed = LPFC_LINK_SPEED_UNKNOWN;
   break;
  }
 }

 if (phba->fc_topology &&
     phba->fc_topology != bf_get(lpfc_mbx_read_top_topology, la)) {
  lpfc_printf_log(phba, KERN_WARNING, LOG_SLI,
    "3314 Toplogy changed was 0x%x is 0x%x\n",
    phba->fc_topology,
    bf_get(lpfc_mbx_read_top_topology, la));
  phba->fc_topology_changed = 1;
 }

 phba->fc_topology = bf_get(lpfc_mbx_read_top_topology, la);
 phba->link_flag &= ~LS_NPIV_FAB_SUPPORTED;

 shost = lpfc_shost_from_vport(vport);
 if (phba->fc_topology == LPFC_TOPOLOGY_LOOP) {
  phba->sli3_options &= ~LPFC_SLI3_NPIV_ENABLED;




  if (phba->cfg_enable_npiv && phba->max_vpi)
   lpfc_printf_log(phba, KERN_ERR, LOG_LINK_EVENT,
    "1309 Link Up Event npiv not supported in loop "
    "topology\n");

  if (bf_get(lpfc_mbx_read_top_il, la))
   fc_flags |= FC_LBIT;

  vport->fc_myDID = bf_get(lpfc_mbx_read_top_alpa_granted, la);
  i = la->lilpBde64.tus.f.bdeSize;

  if (i == 0) {
   phba->alpa_map[0] = 0;
  } else {
   if (vport->cfg_log_verbose & LOG_LINK_EVENT) {
    int numalpa, j, k;
    union {
     uint8_t pamap[16];
     struct {
      uint32_t wd1;
      uint32_t wd2;
      uint32_t wd3;
      uint32_t wd4;
     } pa;
    } un;
    numalpa = phba->alpa_map[0];
    j = 0;
    while (j < numalpa) {
     memset(un.pamap, 0, 16);
     for (k = 1; j < numalpa; k++) {
      un.pamap[k - 1] =
       phba->alpa_map[j + 1];
      j++;
      if (k == 16)
       break;
     }

     lpfc_printf_log(phba,
       KERN_WARNING,
       LOG_LINK_EVENT,
       "1304 Link Up Event "
       "ALPA map Data: x%x "
       "x%x x%x x%x\n",
       un.pa.wd1, un.pa.wd2,
       un.pa.wd3, un.pa.wd4);
    }
   }
  }
 } else {
  if (!(phba->sli3_options & LPFC_SLI3_NPIV_ENABLED)) {
   if (phba->max_vpi && phba->cfg_enable_npiv &&
      (phba->sli_rev >= LPFC_SLI_REV3))
    phba->sli3_options |= LPFC_SLI3_NPIV_ENABLED;
  }
  vport->fc_myDID = phba->fc_pref_DID;
  fc_flags |= FC_LBIT;
 }
 spin_unlock_irqrestore(&phba->hbalock, iflags);

 if (fc_flags) {
  spin_lock_irqsave(shost->host_lock, iflags);
  vport->fc_flag |= fc_flags;
  spin_unlock_irqrestore(shost->host_lock, iflags);
 }

 lpfc_linkup(phba);
 sparam_mbox = mempool_alloc(phba->mbox_mem_pool, GFP_KERNEL);
 if (!sparam_mbox)
  goto out;

 rc = lpfc_read_sparam(phba, sparam_mbox, 0);
 if (rc) {
  mempool_free(sparam_mbox, phba->mbox_mem_pool);
  goto out;
 }
 sparam_mbox->vport = vport;
 sparam_mbox->mbox_cmpl = lpfc_mbx_cmpl_read_sparam;
 rc = lpfc_sli_issue_mbox(phba, sparam_mbox, MBX_NOWAIT);
 if (rc == MBX_NOT_FINISHED) {
  mp = (struct lpfc_dmabuf *)sparam_mbox->ctx_buf;
  lpfc_mbuf_free(phba, mp->virt, mp->phys);
  kfree(mp);
  mempool_free(sparam_mbox, phba->mbox_mem_pool);
  goto out;
 }

 if (!(phba->hba_flag & HBA_FCOE_MODE)) {
  cfglink_mbox = mempool_alloc(phba->mbox_mem_pool, GFP_KERNEL);
  if (!cfglink_mbox)
   goto out;
  vport->port_state = LPFC_LOCAL_CFG_LINK;
  lpfc_config_link(phba, cfglink_mbox);
  cfglink_mbox->vport = vport;
  cfglink_mbox->mbox_cmpl = lpfc_mbx_cmpl_local_config_link;
  rc = lpfc_sli_issue_mbox(phba, cfglink_mbox, MBX_NOWAIT);
  if (rc == MBX_NOT_FINISHED) {
   mempool_free(cfglink_mbox, phba->mbox_mem_pool);
   goto out;
  }
 } else {
  vport->port_state = LPFC_VPORT_UNKNOWN;





  if (!(phba->hba_flag & HBA_FIP_SUPPORT)) {
   fcf_record = kzalloc(sizeof(struct fcf_record),
     GFP_KERNEL);
   if (unlikely(!fcf_record)) {
    lpfc_printf_log(phba, KERN_ERR,
     LOG_MBOX | LOG_SLI,
     "2554 Could not allocate memory for "
     "fcf record\n");
    rc = -ENODEV;
    goto out;
   }

   lpfc_sli4_build_dflt_fcf_record(phba, fcf_record,
      LPFC_FCOE_FCF_DEF_INDEX);
   rc = lpfc_sli4_add_fcf_record(phba, fcf_record);
   if (unlikely(rc)) {
    lpfc_printf_log(phba, KERN_ERR,
     LOG_MBOX | LOG_SLI,
     "2013 Could not manually add FCF "
     "record 0, status %d\n", rc);
    rc = -ENODEV;
    kfree(fcf_record);
    goto out;
   }
   kfree(fcf_record);
  }




  spin_lock_irqsave(&phba->hbalock, iflags);
  if (phba->hba_flag & FCF_TS_INPROG) {
   spin_unlock_irqrestore(&phba->hbalock, iflags);
   return;
  }

  phba->fcf.fcf_flag |= FCF_INIT_DISC;
  spin_unlock_irqrestore(&phba->hbalock, iflags);
  lpfc_printf_log(phba, KERN_INFO, LOG_FIP | LOG_DISCOVERY,
    "2778 Start FCF table scan at linkup\n");
  rc = lpfc_sli4_fcf_scan_read_fcf_rec(phba,
           LPFC_FCOE_FCF_GET_FIRST);
  if (rc) {
   spin_lock_irqsave(&phba->hbalock, iflags);
   phba->fcf.fcf_flag &= ~FCF_INIT_DISC;
   spin_unlock_irqrestore(&phba->hbalock, iflags);
   goto out;
  }

  lpfc_sli4_clear_fcf_rr_bmask(phba);
 }

 return;
out:
 lpfc_vport_set_state(vport, FC_VPORT_FAILED);
 lpfc_printf_vlog(vport, KERN_ERR, LOG_MBOX,
    "0263 Discovery Mailbox error: state: 0x%x : x%px x%px\n",
    vport->port_state, sparam_mbox, cfglink_mbox);
 lpfc_issue_clear_la(phba, vport);
 return;
}
