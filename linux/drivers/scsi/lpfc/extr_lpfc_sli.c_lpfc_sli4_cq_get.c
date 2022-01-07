
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_queue {scalar_t__ qe_valid; int host_index; } ;
struct lpfc_cqe {int dummy; } ;


 scalar_t__ bf_get_le32 (int ,struct lpfc_cqe*) ;
 int lpfc_cqe_valid ;
 struct lpfc_cqe* lpfc_sli4_qe (struct lpfc_queue*,int ) ;
 int mb () ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct lpfc_cqe *
lpfc_sli4_cq_get(struct lpfc_queue *q)
{
 struct lpfc_cqe *cqe;


 if (unlikely(!q))
  return ((void*)0);
 cqe = lpfc_sli4_qe(q, q->host_index);


 if (bf_get_le32(lpfc_cqe_valid, cqe) != q->qe_valid)
  return ((void*)0);
 mb();
 return cqe;
}
