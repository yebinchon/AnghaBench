
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int vendorUnique; int lsRjtRsnCodeExp; int lsRjtRsnCode; int lsRjtRsvd0; } ;
struct TYPE_5__ {int lsRjtError; TYPE_1__ b; } ;
struct ls_rjt {TYPE_2__ un; } ;
struct lpfc_vport {int dummy; } ;
struct lpfc_nodelist {int dummy; } ;
struct lpfc_iocbq {scalar_t__ context2; } ;
struct lpfc_dmabuf {scalar_t__ virt; } ;
struct TYPE_6__ {int Format; } ;
typedef TYPE_3__ RNID ;


 int LSEXP_CANT_GIVE_DATA ;
 int LSRJT_UNABLE_TPC ;

 int lpfc_els_rsp_reject (struct lpfc_vport*,int ,struct lpfc_iocbq*,struct lpfc_nodelist*,int *) ;
 int lpfc_els_rsp_rnid_acc (struct lpfc_vport*,int,struct lpfc_iocbq*,struct lpfc_nodelist*) ;

__attribute__((used)) static int
lpfc_els_rcv_rnid(struct lpfc_vport *vport, struct lpfc_iocbq *cmdiocb,
    struct lpfc_nodelist *ndlp)
{
 struct lpfc_dmabuf *pcmd;
 uint32_t *lp;
 RNID *rn;
 struct ls_rjt stat;

 pcmd = (struct lpfc_dmabuf *) cmdiocb->context2;
 lp = (uint32_t *) pcmd->virt;

 lp++;
 rn = (RNID *) lp;



 switch (rn->Format) {
 case 0:
 case 128:

  lpfc_els_rsp_rnid_acc(vport, rn->Format, cmdiocb, ndlp);
  break;
 default:

  stat.un.b.lsRjtRsvd0 = 0;
  stat.un.b.lsRjtRsnCode = LSRJT_UNABLE_TPC;
  stat.un.b.lsRjtRsnCodeExp = LSEXP_CANT_GIVE_DATA;
  stat.un.b.vendorUnique = 0;
  lpfc_els_rsp_reject(vport, stat.un.lsRjtError, cmdiocb, ndlp,
   ((void*)0));
 }
 return 0;
}
