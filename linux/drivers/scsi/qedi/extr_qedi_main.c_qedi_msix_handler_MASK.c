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
struct qedi_fastpath {int /*<<< orphan*/  sb_info; struct qedi_ctx* qedi; } ;
struct qedi_ctx {int /*<<< orphan*/  dbg_ctx; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IGU_INT_DISABLE ; 
 int /*<<< orphan*/  IGU_INT_ENABLE ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  QEDI_LOG_DISC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct qedi_fastpath*) ; 
 int FUNC4 (struct qedi_fastpath*) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_id)
{
	struct qedi_fastpath *fp = dev_id;
	struct qedi_ctx *qedi = fp->qedi;
	bool wake_io_thread = true;

	FUNC1(fp->sb_info, IGU_INT_DISABLE, 0);

process_again:
	wake_io_thread = FUNC4(fp);
	if (wake_io_thread) {
		FUNC0(&qedi->dbg_ctx, QEDI_LOG_DISC,
			  "process already running\n");
	}

	if (FUNC3(fp) == 0)
		FUNC2(fp->sb_info);

	/* Check for more work */
	FUNC5();

	if (FUNC3(fp) == 0)
		FUNC1(fp->sb_info, IGU_INT_ENABLE, 1);
	else
		goto process_again;

	return IRQ_HANDLED;
}