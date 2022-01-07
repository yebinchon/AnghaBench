
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsp_que {int dummy; } ;
typedef struct rsp_que req_que ;
struct qla_hw_data {int max_req_queues; int max_rsp_queues; struct rsp_que** rsp_q_map; int hardware_lock; int rsp_qid_map; struct rsp_que** req_q_map; int req_qid_map; struct rsp_que** base_qpair; struct rsp_que** queue_pair_map; } ;


 int clear_bit (int,int ) ;
 int kfree (struct rsp_que**) ;
 int qla2x00_free_req_que (struct qla_hw_data*,struct rsp_que*) ;
 int qla2x00_free_rsp_que (struct qla_hw_data*,struct rsp_que*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_bit (int,int ) ;

__attribute__((used)) static void qla2x00_free_queues(struct qla_hw_data *ha)
{
 struct req_que *req;
 struct rsp_que *rsp;
 int cnt;
 unsigned long flags;

 if (ha->queue_pair_map) {
  kfree(ha->queue_pair_map);
  ha->queue_pair_map = ((void*)0);
 }
 if (ha->base_qpair) {
  kfree(ha->base_qpair);
  ha->base_qpair = ((void*)0);
 }

 spin_lock_irqsave(&ha->hardware_lock, flags);
 for (cnt = 0; cnt < ha->max_req_queues; cnt++) {
  if (!test_bit(cnt, ha->req_qid_map))
   continue;

  req = ha->req_q_map[cnt];
  clear_bit(cnt, ha->req_qid_map);
  ha->req_q_map[cnt] = ((void*)0);

  spin_unlock_irqrestore(&ha->hardware_lock, flags);
  qla2x00_free_req_que(ha, req);
  spin_lock_irqsave(&ha->hardware_lock, flags);
 }
 spin_unlock_irqrestore(&ha->hardware_lock, flags);

 kfree(ha->req_q_map);
 ha->req_q_map = ((void*)0);


 spin_lock_irqsave(&ha->hardware_lock, flags);
 for (cnt = 0; cnt < ha->max_rsp_queues; cnt++) {
  if (!test_bit(cnt, ha->rsp_qid_map))
   continue;

  rsp = ha->rsp_q_map[cnt];
  clear_bit(cnt, ha->rsp_qid_map);
  ha->rsp_q_map[cnt] = ((void*)0);
  spin_unlock_irqrestore(&ha->hardware_lock, flags);
  qla2x00_free_rsp_que(ha, rsp);
  spin_lock_irqsave(&ha->hardware_lock, flags);
 }
 spin_unlock_irqrestore(&ha->hardware_lock, flags);

 kfree(ha->rsp_q_map);
 ha->rsp_q_map = ((void*)0);
}
