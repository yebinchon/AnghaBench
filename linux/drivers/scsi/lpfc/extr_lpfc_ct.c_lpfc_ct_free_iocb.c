
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * ndlp; } ;
struct lpfc_iocbq {int * context3; int * context2; int * context1; TYPE_1__ context_un; } ;
struct lpfc_hba {int dummy; } ;
struct lpfc_dmabuf {int phys; int virt; } ;


 int kfree (struct lpfc_dmabuf*) ;
 int lpfc_free_ct_rsp (struct lpfc_hba*,struct lpfc_dmabuf*) ;
 int lpfc_mbuf_free (struct lpfc_hba*,int ,int ) ;
 int lpfc_nlp_put (int *) ;
 int lpfc_sli_release_iocbq (struct lpfc_hba*,struct lpfc_iocbq*) ;

int
lpfc_ct_free_iocb(struct lpfc_hba *phba, struct lpfc_iocbq *ctiocb)
{
 struct lpfc_dmabuf *buf_ptr;

 if (ctiocb->context_un.ndlp) {
  lpfc_nlp_put(ctiocb->context_un.ndlp);
  ctiocb->context_un.ndlp = ((void*)0);
 }
 if (ctiocb->context1) {
  buf_ptr = (struct lpfc_dmabuf *) ctiocb->context1;
  lpfc_mbuf_free(phba, buf_ptr->virt, buf_ptr->phys);
  kfree(buf_ptr);
  ctiocb->context1 = ((void*)0);
 }
 if (ctiocb->context2) {
  lpfc_free_ct_rsp(phba, (struct lpfc_dmabuf *) ctiocb->context2);
  ctiocb->context2 = ((void*)0);
 }

 if (ctiocb->context3) {
  buf_ptr = (struct lpfc_dmabuf *) ctiocb->context3;
  lpfc_mbuf_free(phba, buf_ptr->virt, buf_ptr->phys);
  kfree(buf_ptr);
  ctiocb->context3 = ((void*)0);
 }
 lpfc_sli_release_iocbq(phba, ctiocb);
 return 0;
}
