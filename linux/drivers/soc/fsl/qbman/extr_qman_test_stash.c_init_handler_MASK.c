#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {void* fq_ctrl; } ;
struct TYPE_3__ {int /*<<< orphan*/  dqrr; } ;
struct qm_mcc_initfq {TYPE_2__ fqd; void* we_mask; TYPE_1__ cb; } ;
struct hp_handler {scalar_t__ processor_id; struct qm_mcc_initfq tx; int /*<<< orphan*/  fqid_tx; struct qm_mcc_initfq rx; int /*<<< orphan*/  fqid_rx; } ;
typedef  int /*<<< orphan*/  opts ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  QMAN_FQ_FLAG_NO_MODIFY ; 
 int QMAN_INITFQ_FLAG_LOCAL ; 
 int QMAN_INITFQ_FLAG_SCHED ; 
 int QM_FQCTRL_CTXASTASHING ; 
 int QM_INITFQ_WE_CONTEXTA ; 
 int QM_INITFQ_WE_FQCTRL ; 
 int /*<<< orphan*/  STASH_CTX_CL ; 
 int /*<<< orphan*/  STASH_DATA_CL ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct qm_mcc_initfq*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  normal_dqrr ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct qm_mcc_initfq*) ; 
 int FUNC5 (struct qm_mcc_initfq*,int,struct qm_mcc_initfq*) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  special_dqrr ; 
 struct hp_handler* special_handler ; 

__attribute__((used)) static int FUNC7(void *h)
{
	struct qm_mcc_initfq opts;
	struct hp_handler *handler = h;
	int err;

	if (handler->processor_id != FUNC6()) {
		err = -EIO;
		goto failed;
	}
	/* Set up rx */
	FUNC1(&handler->rx, 0, sizeof(handler->rx));
	if (handler == special_handler)
		handler->rx.cb.dqrr = special_dqrr;
	else
		handler->rx.cb.dqrr = normal_dqrr;
	err = FUNC4(handler->fqid_rx, 0, &handler->rx);
	if (err) {
		FUNC2("qman_create_fq(rx) failed");
		goto failed;
	}
	FUNC1(&opts, 0, sizeof(opts));
	opts.we_mask = FUNC0(QM_INITFQ_WE_FQCTRL |
				   QM_INITFQ_WE_CONTEXTA);
	opts.fqd.fq_ctrl = FUNC0(QM_FQCTRL_CTXASTASHING);
	FUNC3(&opts.fqd, 0, STASH_DATA_CL, STASH_CTX_CL);
	err = FUNC5(&handler->rx, QMAN_INITFQ_FLAG_SCHED |
			   QMAN_INITFQ_FLAG_LOCAL, &opts);
	if (err) {
		FUNC2("qman_init_fq(rx) failed");
		goto failed;
	}
	/* Set up tx */
	FUNC1(&handler->tx, 0, sizeof(handler->tx));
	err = FUNC4(handler->fqid_tx, QMAN_FQ_FLAG_NO_MODIFY,
			     &handler->tx);
	if (err) {
		FUNC2("qman_create_fq(tx) failed");
		goto failed;
	}

	return 0;
failed:
	return err;
}