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
struct seq_file {struct qedi_ctx* private; } ;
struct qedi_io_log {int /*<<< orphan*/  blk_rsp_cpu; int /*<<< orphan*/  intr_cpu; int /*<<< orphan*/  req_cpu; int /*<<< orphan*/  blk_req_cpu; int /*<<< orphan*/  jiffies; int /*<<< orphan*/  result; int /*<<< orphan*/  sg_count; int /*<<< orphan*/  bufflen; int /*<<< orphan*/ * lba; int /*<<< orphan*/  op; int /*<<< orphan*/  lun; int /*<<< orphan*/  cid; int /*<<< orphan*/  task_id; int /*<<< orphan*/  direction; } ;
struct qedi_ctx {int io_trace_idx; int /*<<< orphan*/  io_trace_lock; struct qedi_io_log* io_trace_buf; } ;

/* Variables and functions */
 int QEDI_IO_TRACE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int
FUNC4(struct seq_file *s, void *unused)
{
	int id, idx = 0;
	struct qedi_ctx *qedi = s->private;
	struct qedi_io_log *io_log;
	unsigned long flags;

	FUNC1(s, " DUMP IO LOGS:\n");
	FUNC2(&qedi->io_trace_lock, flags);
	idx = qedi->io_trace_idx;
	for (id = 0; id < QEDI_IO_TRACE_SIZE; id++) {
		io_log = &qedi->io_trace_buf[idx];
		FUNC0(s, "iodir-%d:", io_log->direction);
		FUNC0(s, "tid-0x%x:", io_log->task_id);
		FUNC0(s, "cid-0x%x:", io_log->cid);
		FUNC0(s, "lun-%d:", io_log->lun);
		FUNC0(s, "op-0x%02x:", io_log->op);
		FUNC0(s, "0x%02x%02x%02x%02x:", io_log->lba[0],
			   io_log->lba[1], io_log->lba[2], io_log->lba[3]);
		FUNC0(s, "buflen-%d:", io_log->bufflen);
		FUNC0(s, "sgcnt-%d:", io_log->sg_count);
		FUNC0(s, "res-0x%08x:", io_log->result);
		FUNC0(s, "jif-%lu:", io_log->jiffies);
		FUNC0(s, "blk_req_cpu-%d:", io_log->blk_req_cpu);
		FUNC0(s, "req_cpu-%d:", io_log->req_cpu);
		FUNC0(s, "intr_cpu-%d:", io_log->intr_cpu);
		FUNC0(s, "blk_rsp_cpu-%d\n", io_log->blk_rsp_cpu);

		idx++;
		if (idx == QEDI_IO_TRACE_SIZE)
			idx = 0;
	}
	FUNC3(&qedi->io_trace_lock, flags);
	return 0;
}