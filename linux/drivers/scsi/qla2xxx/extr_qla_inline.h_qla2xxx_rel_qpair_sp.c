
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct qla_qpair {int srb_mempool; } ;
struct TYPE_4__ {int * qpair; } ;
typedef TYPE_1__ srb_t ;


 int QLA_QPAIR_MARK_NOT_BUSY (struct qla_qpair*) ;
 int mempool_free (TYPE_1__*,int ) ;

__attribute__((used)) static inline void
qla2xxx_rel_qpair_sp(struct qla_qpair *qpair, srb_t *sp)
{
 sp->qpair = ((void*)0);
 mempool_free(sp, qpair->srb_mempool);
 QLA_QPAIR_MARK_NOT_BUSY(qpair);
}
