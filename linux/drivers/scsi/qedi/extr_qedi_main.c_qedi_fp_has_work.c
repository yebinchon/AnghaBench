
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct status_block_e4 {int* pi_array; } ;
struct qedi_fastpath {size_t sb_id; struct qed_sb_info* sb_info; struct qedi_ctx* qedi; } ;
struct qedi_ctx {struct global_queue** global_queues; } ;
struct qed_sb_info {struct status_block_e4* sb_virt; } ;
struct global_queue {int cq_cons_idx; } ;


 int QEDI_CQ_SIZE ;
 size_t QEDI_PROTO_CQ_PROD_IDX ;
 int barrier () ;

__attribute__((used)) static bool qedi_fp_has_work(struct qedi_fastpath *fp)
{
 struct qedi_ctx *qedi = fp->qedi;
 struct global_queue *que;
 struct qed_sb_info *sb_info = fp->sb_info;
 struct status_block_e4 *sb = sb_info->sb_virt;
 u16 prod_idx;

 barrier();


 prod_idx = sb->pi_array[QEDI_PROTO_CQ_PROD_IDX];


 que = qedi->global_queues[fp->sb_id];


 if (prod_idx >= QEDI_CQ_SIZE)
  prod_idx = prod_idx % QEDI_CQ_SIZE;

 return (que->cq_cons_idx != prod_idx);
}
