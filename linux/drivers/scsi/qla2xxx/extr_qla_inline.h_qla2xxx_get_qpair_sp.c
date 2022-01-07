
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct qla_qpair {int srb_mempool; } ;
typedef int srb_t ;
typedef int scsi_qla_host_t ;
typedef int gfp_t ;
typedef int fc_port_t ;


 int QLA_QPAIR_MARK_BUSY (struct qla_qpair*,int ) ;
 int QLA_QPAIR_MARK_NOT_BUSY (struct qla_qpair*) ;
 int * mempool_alloc (int ,int ) ;
 int qla2xxx_init_sp (int *,int *,struct qla_qpair*,int *) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static inline srb_t *
qla2xxx_get_qpair_sp(scsi_qla_host_t *vha, struct qla_qpair *qpair,
    fc_port_t *fcport, gfp_t flag)
{
 srb_t *sp = ((void*)0);
 uint8_t bail;

 QLA_QPAIR_MARK_BUSY(qpair, bail);
 if (unlikely(bail))
  return ((void*)0);

 sp = mempool_alloc(qpair->srb_mempool, flag);
 if (sp)
  qla2xxx_init_sp(sp, vha, qpair, fcport);
 else
  QLA_QPAIR_MARK_NOT_BUSY(qpair);
 return sp;
}
