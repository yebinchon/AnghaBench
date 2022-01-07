
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_4__ {scalar_t__ vendorUnique; int lsRjtRsnCodeExp; int lsRjtRsnCode; scalar_t__ lsRjtRsvd0; } ;
struct TYPE_5__ {int lsRjtError; TYPE_1__ b; } ;
struct ls_rjt {TYPE_2__ un; } ;
struct lpfc_vport {int dummy; } ;
struct lpfc_nodelist {scalar_t__ nlp_state; } ;
struct lpfc_iocbq {scalar_t__ context2; } ;
struct lpfc_dmabuf {scalar_t__ virt; } ;
struct TYPE_6__ {scalar_t__ index; int maxsize; } ;
typedef int RPL_RSP ;
typedef TYPE_3__ RPL ;


 int LSEXP_CANT_GIVE_DATA ;
 int LSRJT_UNABLE_TPC ;
 scalar_t__ NLP_STE_MAPPED_NODE ;
 scalar_t__ NLP_STE_UNMAPPED_NODE ;
 int be32_to_cpu (int ) ;
 int lpfc_els_rsp_reject (struct lpfc_vport*,int ,struct lpfc_iocbq*,struct lpfc_nodelist*,int *) ;
 int lpfc_els_rsp_rpl_acc (struct lpfc_vport*,int,struct lpfc_iocbq*,struct lpfc_nodelist*) ;

__attribute__((used)) static int
lpfc_els_rcv_rpl(struct lpfc_vport *vport, struct lpfc_iocbq *cmdiocb,
   struct lpfc_nodelist *ndlp)
{
 struct lpfc_dmabuf *pcmd;
 uint32_t *lp;
 uint32_t maxsize;
 uint16_t cmdsize;
 RPL *rpl;
 struct ls_rjt stat;

 if ((ndlp->nlp_state != NLP_STE_UNMAPPED_NODE) &&
     (ndlp->nlp_state != NLP_STE_MAPPED_NODE)) {

  stat.un.b.lsRjtRsvd0 = 0;
  stat.un.b.lsRjtRsnCode = LSRJT_UNABLE_TPC;
  stat.un.b.lsRjtRsnCodeExp = LSEXP_CANT_GIVE_DATA;
  stat.un.b.vendorUnique = 0;
  lpfc_els_rsp_reject(vport, stat.un.lsRjtError, cmdiocb, ndlp,
   ((void*)0));

  return 0;
 }

 pcmd = (struct lpfc_dmabuf *) cmdiocb->context2;
 lp = (uint32_t *) pcmd->virt;
 rpl = (RPL *) (lp + 1);
 maxsize = be32_to_cpu(rpl->maxsize);


 if ((rpl->index == 0) &&
     ((maxsize == 0) ||
      ((maxsize * sizeof(uint32_t)) >= sizeof(RPL_RSP)))) {
  cmdsize = sizeof(uint32_t) + sizeof(RPL_RSP);
 } else {
  cmdsize = sizeof(uint32_t) + maxsize * sizeof(uint32_t);
 }
 lpfc_els_rsp_rpl_acc(vport, cmdsize, cmdiocb, ndlp);

 return 0;
}
