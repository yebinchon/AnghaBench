
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct status_block_e4 {int* pi_array; } ;
struct seq_file {struct qedi_ctx* private; } ;
struct qedi_fastpath {size_t sb_id; struct qed_sb_info* sb_info; } ;
struct qedi_ctx {int hba_lock; struct global_queue** global_queues; struct qedi_fastpath* fp_array; } ;
struct qed_sb_info {struct status_block_e4* sb_virt; } ;
struct global_queue {int cq_cons_idx; } ;


 int MIN_NUM_CPUS_MSIX (struct qedi_ctx*) ;
 size_t QEDI_PROTO_CQ_PROD_IDX ;
 int STATUS_BLOCK_E4_PROD_INDEX_MASK ;
 int seq_printf (struct seq_file*,char*,int) ;
 int seq_puts (struct seq_file*,char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int
qedi_gbl_ctx_show(struct seq_file *s, void *unused)
{
 struct qedi_fastpath *fp = ((void*)0);
 struct qed_sb_info *sb_info = ((void*)0);
 struct status_block_e4 *sb = ((void*)0);
 struct global_queue *que = ((void*)0);
 int id;
 u16 prod_idx;
 struct qedi_ctx *qedi = s->private;
 unsigned long flags;

 seq_puts(s, " DUMP CQ CONTEXT:\n");

 for (id = 0; id < MIN_NUM_CPUS_MSIX(qedi); id++) {
  spin_lock_irqsave(&qedi->hba_lock, flags);
  seq_printf(s, "=========FAST CQ PATH [%d] ==========\n", id);
  fp = &qedi->fp_array[id];
  sb_info = fp->sb_info;
  sb = sb_info->sb_virt;
  prod_idx = (sb->pi_array[QEDI_PROTO_CQ_PROD_IDX] &
       STATUS_BLOCK_E4_PROD_INDEX_MASK);
  seq_printf(s, "SB PROD IDX: %d\n", prod_idx);
  que = qedi->global_queues[fp->sb_id];
  seq_printf(s, "DRV CONS IDX: %d\n", que->cq_cons_idx);
  seq_printf(s, "CQ complete host memory: %d\n", fp->sb_id);
  seq_puts(s, "=========== END ==================\n\n\n");
  spin_unlock_irqrestore(&qedi->hba_lock, flags);
 }
 return 0;
}
