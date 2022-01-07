
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct lpfc_vport {int cfg_tgt_queue_depth; int phba; } ;
struct TYPE_4__ {int evt_listp; } ;
struct TYPE_3__ {int evt_listp; } ;
struct lpfc_nodelist {int nlp_defer_did; int cmd_qdepth; int cmd_pending; int kref; int nlp_fc4_type; int nlp_sid; int phba; struct lpfc_vport* vport; int nlp_DID; int nlp_delayfunc; TYPE_2__ dev_loss_evt; TYPE_1__ els_retry_evt; } ;


 int INIT_LIST_HEAD (int *) ;
 int NLP_EVT_NOTHING_PENDING ;
 int NLP_FC4_NONE ;
 int NLP_INT_NODE_ACT (struct lpfc_nodelist*) ;
 int NLP_NO_SID ;
 int atomic_set (int *,int ) ;
 int kref_init (int *) ;
 int lpfc_els_retry_delay ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static inline void
lpfc_initialize_node(struct lpfc_vport *vport, struct lpfc_nodelist *ndlp,
 uint32_t did)
{
 INIT_LIST_HEAD(&ndlp->els_retry_evt.evt_listp);
 INIT_LIST_HEAD(&ndlp->dev_loss_evt.evt_listp);
 timer_setup(&ndlp->nlp_delayfunc, lpfc_els_retry_delay, 0);
 ndlp->nlp_DID = did;
 ndlp->vport = vport;
 ndlp->phba = vport->phba;
 ndlp->nlp_sid = NLP_NO_SID;
 ndlp->nlp_fc4_type = NLP_FC4_NONE;
 kref_init(&ndlp->kref);
 NLP_INT_NODE_ACT(ndlp);
 atomic_set(&ndlp->cmd_pending, 0);
 ndlp->cmd_qdepth = vport->cfg_tgt_queue_depth;
 ndlp->nlp_defer_did = NLP_EVT_NOTHING_PENDING;
}
