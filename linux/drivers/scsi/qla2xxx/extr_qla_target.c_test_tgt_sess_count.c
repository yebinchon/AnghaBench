
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qla_tgt {scalar_t__ sess_count; int vha; struct qla_hw_data* ha; } ;
struct TYPE_2__ {int sess_lock; } ;
struct qla_hw_data {TYPE_1__ tgt; } ;


 int ql_dbg (int ,int ,int,char*,struct qla_tgt*,scalar_t__) ;
 int ql_dbg_tgt ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline int test_tgt_sess_count(struct qla_tgt *tgt)
{
 struct qla_hw_data *ha = tgt->ha;
 unsigned long flags;
 int res;




 spin_lock_irqsave(&ha->tgt.sess_lock, flags);
 ql_dbg(ql_dbg_tgt, tgt->vha, 0xe002,
     "tgt %p, sess_count=%d\n",
     tgt, tgt->sess_count);
 res = (tgt->sess_count == 0);
 spin_unlock_irqrestore(&ha->tgt.sess_lock, flags);

 return res;
}
