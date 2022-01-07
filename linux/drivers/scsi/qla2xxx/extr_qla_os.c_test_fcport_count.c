
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int sess_lock; } ;
struct qla_hw_data {TYPE_1__ tgt; } ;
struct TYPE_7__ {scalar_t__ fcport_count; struct qla_hw_data* hw; } ;
typedef TYPE_2__ scsi_qla_host_t ;


 int ql_dbg (int ,TYPE_2__*,int,char*,TYPE_2__*,scalar_t__) ;
 int ql_dbg_init ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline int test_fcport_count(scsi_qla_host_t *vha)
{
 struct qla_hw_data *ha = vha->hw;
 unsigned long flags;
 int res;

 spin_lock_irqsave(&ha->tgt.sess_lock, flags);
 ql_dbg(ql_dbg_init, vha, 0x00ec,
     "tgt %p, fcport_count=%d\n",
     vha, vha->fcport_count);
 res = (vha->fcport_count == 0);
 spin_unlock_irqrestore(&ha->tgt.sess_lock, flags);

 return res;
}
