
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct qla_tgt {struct qla_qpair_hint* qphints; TYPE_1__* ha; } ;
struct qla_qpair_hint {struct qla_qpair* qpair; } ;
struct qla_qpair {int dummy; } ;
struct TYPE_2__ {size_t max_qpairs; } ;



__attribute__((used)) static inline struct qla_qpair_hint *
qla_qpair_to_hint(struct qla_tgt *tgt, struct qla_qpair *qpair)
{
 struct qla_qpair_hint *h;
 u16 i;

 for (i = 0; i < tgt->ha->max_qpairs + 1; i++) {
  h = &tgt->qphints[i];
  if (h->qpair == qpair)
   return h;
 }

 return ((void*)0);
}
