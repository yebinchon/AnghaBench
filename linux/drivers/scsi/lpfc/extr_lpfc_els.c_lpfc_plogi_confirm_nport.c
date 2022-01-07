
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int u32 ;
struct serv_parm {int portName; } ;
struct lpfc_vport {int fc_flag; } ;
struct lpfc_rport_data {struct lpfc_nodelist* pnode; } ;
struct lpfc_nvme_rport {int dummy; } ;
struct lpfc_nodelist {int nlp_type; int nlp_DID; int nlp_flag; unsigned long* active_rrqs_xri_bitmap; int nlp_fc4_type; struct fc_rport* rport; struct lpfc_nvme_rport* nrport; int nlp_state; int nlp_portname; int nlp_prev_state; struct lpfc_vport* vport; } ;
struct lpfc_name {int dummy; } ;
struct lpfc_hba {scalar_t__ sli_rev; int cfg_rrq_xri_bitmap_sz; int active_rrq_pool; int ndlp_lock; } ;
struct fc_rport {int dev; struct lpfc_rport_data* dd_data; } ;
struct Scsi_Host {int * host_lock; } ;


 int FC_FABRIC ;
 int GFP_KERNEL ;
 int KERN_INFO ;
 int LOG_ELS ;
 int LOG_NODE ;
 scalar_t__ LPFC_SLI_REV4 ;
 scalar_t__ NLP_CHK_NODE_ACT (struct lpfc_nodelist*) ;
 int NLP_FABRIC ;
 int NLP_RPI_REGISTERED ;
 int NLP_SET_FREE_REQ (struct lpfc_nodelist*) ;
 int NLP_STE_MAPPED_NODE ;
 int NLP_STE_NPR_NODE ;
 int NLP_STE_UNMAPPED_NODE ;
 int NLP_STE_UNUSED_NODE ;
 int NLP_UNREG_INP ;
 int lpfc_drop_node (struct lpfc_vport*,struct lpfc_nodelist*) ;
 struct lpfc_nodelist* lpfc_enable_node (struct lpfc_vport*,struct lpfc_nodelist*,int ) ;
 struct lpfc_nodelist* lpfc_findnode_wwpn (struct lpfc_vport*,int *) ;
 struct lpfc_nodelist* lpfc_nlp_get (struct lpfc_nodelist*) ;
 struct lpfc_nodelist* lpfc_nlp_init (struct lpfc_vport*,int) ;
 int lpfc_nlp_put (struct lpfc_nodelist*) ;
 int lpfc_nlp_set_state (struct lpfc_vport*,struct lpfc_nodelist*,int ) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int,char*,int,int,...) ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 int lpfc_unreg_rpi (struct lpfc_vport*,struct lpfc_nodelist*) ;
 scalar_t__ memcmp (int *,unsigned long*,int) ;
 int memcpy (unsigned long*,unsigned long*,int) ;
 unsigned long* mempool_alloc (int ,int ) ;
 int mempool_free (unsigned long*,int ) ;
 int memset (unsigned long*,int ,int) ;
 int put_device (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static struct lpfc_nodelist *
lpfc_plogi_confirm_nport(struct lpfc_hba *phba, uint32_t *prsp,
    struct lpfc_nodelist *ndlp)
{
 struct lpfc_vport *vport = ndlp->vport;
 struct Scsi_Host *shost = lpfc_shost_from_vport(vport);
 struct lpfc_nodelist *new_ndlp;
 struct lpfc_rport_data *rdata;
 struct fc_rport *rport;
 struct serv_parm *sp;
 uint8_t name[sizeof(struct lpfc_name)];
 uint32_t rc, keepDID = 0, keep_nlp_flag = 0;
 uint32_t keep_new_nlp_flag = 0;
 uint16_t keep_nlp_state;
 u32 keep_nlp_fc4_type = 0;
 struct lpfc_nvme_rport *keep_nrport = ((void*)0);
 int put_node;
 int put_rport;
 unsigned long *active_rrqs_xri_bitmap = ((void*)0);




 if (ndlp->nlp_type & NLP_FABRIC)
  return ndlp;

 sp = (struct serv_parm *) ((uint8_t *) prsp + sizeof(uint32_t));
 memset(name, 0, sizeof(struct lpfc_name));




 new_ndlp = lpfc_findnode_wwpn(vport, &sp->portName);


 if (new_ndlp == ndlp && NLP_CHK_NODE_ACT(new_ndlp))
  return ndlp;

 if (phba->sli_rev == LPFC_SLI_REV4) {
  active_rrqs_xri_bitmap = mempool_alloc(phba->active_rrq_pool,
             GFP_KERNEL);
  if (active_rrqs_xri_bitmap)
   memset(active_rrqs_xri_bitmap, 0,
          phba->cfg_rrq_xri_bitmap_sz);
 }

 lpfc_printf_vlog(vport, KERN_INFO, LOG_ELS | LOG_NODE,
    "3178 PLOGI confirm: ndlp x%x x%x x%x: "
    "new_ndlp x%x x%x x%x\n",
    ndlp->nlp_DID, ndlp->nlp_flag, ndlp->nlp_fc4_type,
    (new_ndlp ? new_ndlp->nlp_DID : 0),
    (new_ndlp ? new_ndlp->nlp_flag : 0),
    (new_ndlp ? new_ndlp->nlp_fc4_type : 0));

 if (!new_ndlp) {
  rc = memcmp(&ndlp->nlp_portname, name,
       sizeof(struct lpfc_name));
  if (!rc) {
   if (active_rrqs_xri_bitmap)
    mempool_free(active_rrqs_xri_bitmap,
          phba->active_rrq_pool);
   return ndlp;
  }
  new_ndlp = lpfc_nlp_init(vport, ndlp->nlp_DID);
  if (!new_ndlp) {
   if (active_rrqs_xri_bitmap)
    mempool_free(active_rrqs_xri_bitmap,
          phba->active_rrq_pool);
   return ndlp;
  }
 } else if (!NLP_CHK_NODE_ACT(new_ndlp)) {
  rc = memcmp(&ndlp->nlp_portname, name,
       sizeof(struct lpfc_name));
  if (!rc) {
   if (active_rrqs_xri_bitmap)
    mempool_free(active_rrqs_xri_bitmap,
          phba->active_rrq_pool);
   return ndlp;
  }
  new_ndlp = lpfc_enable_node(vport, new_ndlp,
      NLP_STE_UNUSED_NODE);
  if (!new_ndlp) {
   if (active_rrqs_xri_bitmap)
    mempool_free(active_rrqs_xri_bitmap,
          phba->active_rrq_pool);
   return ndlp;
  }
  keepDID = new_ndlp->nlp_DID;
  if ((phba->sli_rev == LPFC_SLI_REV4) && active_rrqs_xri_bitmap)
   memcpy(active_rrqs_xri_bitmap,
          new_ndlp->active_rrqs_xri_bitmap,
          phba->cfg_rrq_xri_bitmap_sz);
 } else {
  keepDID = new_ndlp->nlp_DID;
  if (phba->sli_rev == LPFC_SLI_REV4 &&
      active_rrqs_xri_bitmap)
   memcpy(active_rrqs_xri_bitmap,
          new_ndlp->active_rrqs_xri_bitmap,
          phba->cfg_rrq_xri_bitmap_sz);
 }






 if (vport->fc_flag & FC_FABRIC) {
  keep_nlp_fc4_type = new_ndlp->nlp_fc4_type;
  new_ndlp->nlp_fc4_type = ndlp->nlp_fc4_type;
 }

 lpfc_unreg_rpi(vport, new_ndlp);
 new_ndlp->nlp_DID = ndlp->nlp_DID;
 new_ndlp->nlp_prev_state = ndlp->nlp_prev_state;
 if (phba->sli_rev == LPFC_SLI_REV4)
  memcpy(new_ndlp->active_rrqs_xri_bitmap,
         ndlp->active_rrqs_xri_bitmap,
         phba->cfg_rrq_xri_bitmap_sz);

 spin_lock_irq(shost->host_lock);
 keep_new_nlp_flag = new_ndlp->nlp_flag;
 keep_nlp_flag = ndlp->nlp_flag;
 new_ndlp->nlp_flag = ndlp->nlp_flag;


 if (keep_new_nlp_flag & NLP_UNREG_INP)
  new_ndlp->nlp_flag |= NLP_UNREG_INP;
 else
  new_ndlp->nlp_flag &= ~NLP_UNREG_INP;


 if (keep_new_nlp_flag & NLP_RPI_REGISTERED)
  new_ndlp->nlp_flag |= NLP_RPI_REGISTERED;
 else
  new_ndlp->nlp_flag &= ~NLP_RPI_REGISTERED;

 ndlp->nlp_flag = keep_new_nlp_flag;


 if (keep_nlp_flag & NLP_UNREG_INP)
  ndlp->nlp_flag |= NLP_UNREG_INP;
 else
  ndlp->nlp_flag &= ~NLP_UNREG_INP;


 if (keep_nlp_flag & NLP_RPI_REGISTERED)
  ndlp->nlp_flag |= NLP_RPI_REGISTERED;
 else
  ndlp->nlp_flag &= ~NLP_RPI_REGISTERED;

 spin_unlock_irq(shost->host_lock);


 keep_nlp_state = new_ndlp->nlp_state;
 lpfc_nlp_set_state(vport, new_ndlp, ndlp->nlp_state);


 keep_nrport = new_ndlp->nrport;
 new_ndlp->nrport = ndlp->nrport;


 if (memcmp(&ndlp->nlp_portname, name, sizeof(struct lpfc_name)) == 0) {



  lpfc_printf_vlog(vport, KERN_INFO, LOG_ELS,
    "3179 PLOGI confirm NEW: %x %x\n",
    new_ndlp->nlp_DID, keepDID);


  rport = ndlp->rport;
  if (rport) {
   rdata = rport->dd_data;
   if (rdata->pnode == ndlp) {

    ndlp->rport = ((void*)0);
    lpfc_nlp_put(ndlp);
    rdata->pnode = lpfc_nlp_get(new_ndlp);
    new_ndlp->rport = rport;
   }
   new_ndlp->nlp_type = ndlp->nlp_type;
  }


  if (ndlp->nrport) {
   ndlp->nrport = ((void*)0);
   lpfc_nlp_put(ndlp);
  }





  if (ndlp->nlp_DID == 0) {
   spin_lock_irq(&phba->ndlp_lock);
   NLP_SET_FREE_REQ(ndlp);
   spin_unlock_irq(&phba->ndlp_lock);
  }





  ndlp->nlp_DID = keepDID;
  lpfc_nlp_set_state(vport, ndlp, keep_nlp_state);
  if (phba->sli_rev == LPFC_SLI_REV4 &&
      active_rrqs_xri_bitmap)
   memcpy(ndlp->active_rrqs_xri_bitmap,
          active_rrqs_xri_bitmap,
          phba->cfg_rrq_xri_bitmap_sz);

  if (!NLP_CHK_NODE_ACT(ndlp))
   lpfc_drop_node(vport, ndlp);
 }
 else {
  lpfc_printf_vlog(vport, KERN_INFO, LOG_ELS,
    "3180 PLOGI confirm SWAP: %x %x\n",
    new_ndlp->nlp_DID, keepDID);

  lpfc_unreg_rpi(vport, ndlp);





  ndlp->nlp_DID = keepDID;
  ndlp->nlp_fc4_type = keep_nlp_fc4_type;

  if (phba->sli_rev == LPFC_SLI_REV4 &&
      active_rrqs_xri_bitmap)
   memcpy(ndlp->active_rrqs_xri_bitmap,
          active_rrqs_xri_bitmap,
          phba->cfg_rrq_xri_bitmap_sz);




  if ((ndlp->nlp_state == NLP_STE_UNMAPPED_NODE) ||
      (ndlp->nlp_state == NLP_STE_MAPPED_NODE))
   keep_nlp_state = NLP_STE_NPR_NODE;
  lpfc_nlp_set_state(vport, ndlp, keep_nlp_state);





  if (ndlp->nrport)
   lpfc_nlp_put(ndlp);
  ndlp->nrport = keep_nrport;


  rport = ndlp->rport;
  if (rport) {
   rdata = rport->dd_data;
   put_node = rdata->pnode != ((void*)0);
   put_rport = ndlp->rport != ((void*)0);
   rdata->pnode = ((void*)0);
   ndlp->rport = ((void*)0);
   if (put_node)
    lpfc_nlp_put(ndlp);
   if (put_rport)
    put_device(&rport->dev);
  }
 }
 if (phba->sli_rev == LPFC_SLI_REV4 &&
     active_rrqs_xri_bitmap)
  mempool_free(active_rrqs_xri_bitmap,
        phba->active_rrq_pool);

 lpfc_printf_vlog(vport, KERN_INFO, LOG_ELS | LOG_NODE,
    "3173 PLOGI confirm exit: new_ndlp x%x x%x x%x\n",
    new_ndlp->nlp_DID, new_ndlp->nlp_flag,
    new_ndlp->nlp_fc4_type);

 return new_ndlp;
}
