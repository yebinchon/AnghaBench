
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct lpfc_vport {scalar_t__ port_type; } ;
struct lpfc_nodelist {int nlp_usg_map; int kref; int nlp_flag; int nlp_DID; int nlp_rpi; int nlp_type; } ;
struct lpfc_hba {scalar_t__ sli_rev; int mbox_mem_pool; } ;
struct lpfc_dmabuf {int phys; int virt; } ;
struct TYPE_8__ {int * varWords; } ;
struct TYPE_9__ {TYPE_2__ un; } ;
struct TYPE_7__ {TYPE_3__ mb; } ;
struct TYPE_10__ {int * ctx_ndlp; int * ctx_buf; struct lpfc_vport* vport; TYPE_1__ u; } ;
typedef TYPE_3__ MAILBOX_t ;
typedef TYPE_4__ LPFC_MBOXQ_t ;


 int KERN_INFO ;
 int LOG_SLI ;
 scalar_t__ LPFC_PHYSICAL_PORT ;
 scalar_t__ LPFC_SLI_REV4 ;
 int NLP_FABRIC ;
 int NLP_RPI_REGISTERED ;
 int NLP_STE_UNMAPPED_NODE ;
 int SLI_MGMT_DHBA ;
 int SLI_MGMT_DPRT ;
 int kfree (struct lpfc_dmabuf*) ;
 int kref_read (int *) ;
 int lpfc_fdmi_cmd (struct lpfc_vport*,struct lpfc_nodelist*,int ,int ) ;
 int lpfc_mbuf_free (struct lpfc_hba*,int ,int ) ;
 int lpfc_nlp_put (struct lpfc_nodelist*) ;
 int lpfc_nlp_set_state (struct lpfc_vport*,struct lpfc_nodelist*,int ) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*,int ,int ,int ,int ,int ,struct lpfc_nodelist*) ;
 int mempool_free (TYPE_4__*,int ) ;

void
lpfc_mbx_cmpl_fdmi_reg_login(struct lpfc_hba *phba, LPFC_MBOXQ_t *pmb)
{
 MAILBOX_t *mb = &pmb->u.mb;
 struct lpfc_dmabuf *mp = (struct lpfc_dmabuf *)(pmb->ctx_buf);
 struct lpfc_nodelist *ndlp = (struct lpfc_nodelist *)pmb->ctx_ndlp;
 struct lpfc_vport *vport = pmb->vport;

 pmb->ctx_buf = ((void*)0);
 pmb->ctx_ndlp = ((void*)0);

 if (phba->sli_rev < LPFC_SLI_REV4)
  ndlp->nlp_rpi = mb->un.varWords[0];
 ndlp->nlp_flag |= NLP_RPI_REGISTERED;
 ndlp->nlp_type |= NLP_FABRIC;
 lpfc_nlp_set_state(vport, ndlp, NLP_STE_UNMAPPED_NODE);
 lpfc_printf_vlog(vport, KERN_INFO, LOG_SLI,
    "0004 rpi:%x DID:%x flg:%x %d map:%x x%px\n",
    ndlp->nlp_rpi, ndlp->nlp_DID, ndlp->nlp_flag,
    kref_read(&ndlp->kref),
    ndlp->nlp_usg_map, ndlp);






 if (vport->port_type == LPFC_PHYSICAL_PORT)
  lpfc_fdmi_cmd(vport, ndlp, SLI_MGMT_DHBA, 0);
 else
  lpfc_fdmi_cmd(vport, ndlp, SLI_MGMT_DPRT, 0);





 lpfc_nlp_put(ndlp);
 lpfc_mbuf_free(phba, mp->virt, mp->phys);
 kfree(mp);
 mempool_free(pmb, phba->mbox_mem_pool);

 return;
}
