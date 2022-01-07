
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct lpfc_vport {TYPE_2__* phba; } ;
struct lpfc_nodelist {int nlp_rpi; int nlp_DID; TYPE_1__* phba; struct lpfc_nodelist* active_rrqs_xri_bitmap; int nlp_usg_map; int kref; int nlp_flag; int nlp_listp; } ;
struct TYPE_5__ {scalar_t__ sli_rev; int active_rrq_pool; int nlp_mem_pool; } ;
struct TYPE_4__ {int cfg_rrq_xri_bitmap_sz; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int KERN_INFO ;
 int LOG_NODE ;
 int LPFC_DISC_TRC_NODE ;
 int LPFC_RPI_ALLOC_ERROR ;
 scalar_t__ LPFC_SLI_REV4 ;
 int kref_read (int *) ;
 int lpfc_debugfs_disc_trc (struct lpfc_vport*,int ,char*,int ,int ,int ) ;
 int lpfc_initialize_node (struct lpfc_vport*,struct lpfc_nodelist*,int ) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*,int,int ,int ,int ,int ,struct lpfc_nodelist*) ;
 int lpfc_sli4_alloc_rpi (TYPE_2__*) ;
 int lpfc_sli4_free_rpi (TYPE_2__*,int) ;
 void* mempool_alloc (int ,int ) ;
 int memset (struct lpfc_nodelist*,int ,int) ;

struct lpfc_nodelist *
lpfc_nlp_init(struct lpfc_vport *vport, uint32_t did)
{
 struct lpfc_nodelist *ndlp;
 int rpi = LPFC_RPI_ALLOC_ERROR;

 if (vport->phba->sli_rev == LPFC_SLI_REV4) {
  rpi = lpfc_sli4_alloc_rpi(vport->phba);
  if (rpi == LPFC_RPI_ALLOC_ERROR)
   return ((void*)0);
 }

 ndlp = mempool_alloc(vport->phba->nlp_mem_pool, GFP_KERNEL);
 if (!ndlp) {
  if (vport->phba->sli_rev == LPFC_SLI_REV4)
   lpfc_sli4_free_rpi(vport->phba, rpi);
  return ((void*)0);
 }

 memset(ndlp, 0, sizeof (struct lpfc_nodelist));

 lpfc_initialize_node(vport, ndlp, did);
 INIT_LIST_HEAD(&ndlp->nlp_listp);
 if (vport->phba->sli_rev == LPFC_SLI_REV4) {
  ndlp->nlp_rpi = rpi;
  lpfc_printf_vlog(vport, KERN_INFO, LOG_NODE,
     "0007 rpi:%x DID:%x flg:%x refcnt:%d "
     "map:%x x%px\n", ndlp->nlp_rpi, ndlp->nlp_DID,
     ndlp->nlp_flag,
     kref_read(&ndlp->kref),
     ndlp->nlp_usg_map, ndlp);

  ndlp->active_rrqs_xri_bitmap =
    mempool_alloc(vport->phba->active_rrq_pool,
           GFP_KERNEL);
  if (ndlp->active_rrqs_xri_bitmap)
   memset(ndlp->active_rrqs_xri_bitmap, 0,
          ndlp->phba->cfg_rrq_xri_bitmap_sz);
 }



 lpfc_debugfs_disc_trc(vport, LPFC_DISC_TRC_NODE,
  "node init:       did:x%x",
  ndlp->nlp_DID, 0, 0);

 return ndlp;
}
