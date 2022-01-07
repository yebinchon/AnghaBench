
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int qpair; int vha; } ;
typedef TYPE_1__ srb_t ;


 int QLA_VHA_MARK_NOT_BUSY (int ) ;
 int qla2xxx_rel_qpair_sp (int ,TYPE_1__*) ;

__attribute__((used)) static inline void
qla2x00_rel_sp(srb_t *sp)
{
 QLA_VHA_MARK_NOT_BUSY(sp->vha);
 qla2xxx_rel_qpair_sp(sp->qpair, sp);
}
