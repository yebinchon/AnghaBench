
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {scalar_t__ qpairs_available; } ;
struct TYPE_3__ {struct qla_tgt* qla_tgt; } ;
struct scsi_qla_host {TYPE_2__ flags; TYPE_1__ vha_tgt; } ;
struct qla_tgt {struct qla_qpair_hint* qphints; int lun_qpair_map; } ;
struct qla_qpair_hint {int dummy; } ;


 struct qla_qpair_hint* btree_lookup64 (int *,int ) ;

__attribute__((used)) static struct qla_qpair_hint *qlt_find_qphint(struct scsi_qla_host *vha,
    uint64_t unpacked_lun)
{
 struct qla_tgt *tgt = vha->vha_tgt.qla_tgt;
 struct qla_qpair_hint *h = ((void*)0);

 if (vha->flags.qpairs_available) {
  h = btree_lookup64(&tgt->lun_qpair_map, unpacked_lun);
  if (!h)
   h = &tgt->qphints[0];
 } else {
  h = &tgt->qphints[0];
 }

 return h;
}
