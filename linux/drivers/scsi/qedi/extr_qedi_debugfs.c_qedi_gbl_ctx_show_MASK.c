#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u16 ;
struct status_block_e4 {int* pi_array; } ;
struct seq_file {struct qedi_ctx* private; } ;
struct qedi_fastpath {size_t sb_id; struct qed_sb_info* sb_info; } ;
struct qedi_ctx {int /*<<< orphan*/  hba_lock; struct global_queue** global_queues; struct qedi_fastpath* fp_array; } ;
struct qed_sb_info {struct status_block_e4* sb_virt; } ;
struct global_queue {int cq_cons_idx; } ;

/* Variables and functions */
 int FUNC0 (struct qedi_ctx*) ; 
 size_t QEDI_PROTO_CQ_PROD_IDX ; 
 int STATUS_BLOCK_E4_PROD_INDEX_MASK ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int
FUNC5(struct seq_file *s, void *unused)
{
	struct qedi_fastpath *fp = NULL;
	struct qed_sb_info *sb_info = NULL;
	struct status_block_e4 *sb = NULL;
	struct global_queue *que = NULL;
	int id;
	u16 prod_idx;
	struct qedi_ctx *qedi = s->private;
	unsigned long flags;

	FUNC2(s, " DUMP CQ CONTEXT:\n");

	for (id = 0; id < FUNC0(qedi); id++) {
		FUNC3(&qedi->hba_lock, flags);
		FUNC1(s, "=========FAST CQ PATH [%d] ==========\n", id);
		fp = &qedi->fp_array[id];
		sb_info = fp->sb_info;
		sb = sb_info->sb_virt;
		prod_idx = (sb->pi_array[QEDI_PROTO_CQ_PROD_IDX] &
			    STATUS_BLOCK_E4_PROD_INDEX_MASK);
		FUNC1(s, "SB PROD IDX: %d\n", prod_idx);
		que = qedi->global_queues[fp->sb_id];
		FUNC1(s, "DRV CONS IDX: %d\n", que->cq_cons_idx);
		FUNC1(s, "CQ complete host memory: %d\n", fp->sb_id);
		FUNC2(s, "=========== END ==================\n\n\n");
		FUNC4(&qedi->hba_lock, flags);
	}
	return 0;
}