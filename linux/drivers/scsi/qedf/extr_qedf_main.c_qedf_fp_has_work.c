
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct status_block_e4 {scalar_t__* pi_array; } ;
struct qedf_fastpath {size_t sb_id; struct qed_sb_info* sb_info; struct qedf_ctx* qedf; } ;
struct qedf_ctx {struct global_queue** global_queues; } ;
struct qed_sb_info {struct status_block_e4* sb_virt; } ;
struct global_queue {scalar_t__ cq_prod_idx; } ;


 size_t QEDF_FCOE_PARAMS_GL_RQ_PI ;
 int rmb () ;

__attribute__((used)) static bool qedf_fp_has_work(struct qedf_fastpath *fp)
{
 struct qedf_ctx *qedf = fp->qedf;
 struct global_queue *que;
 struct qed_sb_info *sb_info = fp->sb_info;
 struct status_block_e4 *sb = sb_info->sb_virt;
 u16 prod_idx;


 que = qedf->global_queues[fp->sb_id];


 rmb();


 prod_idx = sb->pi_array[QEDF_FCOE_PARAMS_GL_RQ_PI];

 return (que->cq_prod_idx != prod_idx);
}
