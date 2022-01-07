
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qla_tgt_sess_work_param {int type; int sess_works_list_entry; int tm_iocb; } ;
struct qla_tgt {int sess_work; int sess_work_lock; int sess_works_list; int vha; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 struct qla_tgt_sess_work_param* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int memcpy (int *,void const*,unsigned int) ;
 int ql_dbg (int ,int ,int,char*,int,...) ;
 int ql_dbg_tgt_mgt ;
 int schedule_work (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int qlt_sched_sess_work(struct qla_tgt *tgt, int type,
 const void *param, unsigned int param_size)
{
 struct qla_tgt_sess_work_param *prm;
 unsigned long flags;

 prm = kzalloc(sizeof(*prm), GFP_ATOMIC);
 if (!prm) {
  ql_dbg(ql_dbg_tgt_mgt, tgt->vha, 0xf050,
      "qla_target(%d): Unable to create session "
      "work, command will be refused", 0);
  return -ENOMEM;
 }

 ql_dbg(ql_dbg_tgt_mgt, tgt->vha, 0xf00e,
     "Scheduling work (type %d, prm %p)"
     " to find session for param %p (size %d, tgt %p)\n",
     type, prm, param, param_size, tgt);

 prm->type = type;
 memcpy(&prm->tm_iocb, param, param_size);

 spin_lock_irqsave(&tgt->sess_work_lock, flags);
 list_add_tail(&prm->sess_works_list_entry, &tgt->sess_works_list);
 spin_unlock_irqrestore(&tgt->sess_work_lock, flags);

 schedule_work(&tgt->sess_work);

 return 0;
}
