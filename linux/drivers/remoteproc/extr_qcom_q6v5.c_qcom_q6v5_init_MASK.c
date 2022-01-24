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
struct rproc {int dummy; } ;
struct qcom_q6v5 {int crash_reason; void (* handover ) (struct qcom_q6v5*) ;scalar_t__ wdog_irq; scalar_t__ fatal_irq; scalar_t__ ready_irq; scalar_t__ handover_irq; scalar_t__ stop_irq; int /*<<< orphan*/  state; int /*<<< orphan*/  stop_bit; int /*<<< orphan*/  stop_done; int /*<<< orphan*/  start_done; int /*<<< orphan*/ * dev; struct rproc* rproc; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_RISING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct qcom_q6v5*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 void* FUNC6 (struct platform_device*,char*) ; 
 int /*<<< orphan*/  q6v5_fatal_interrupt ; 
 int /*<<< orphan*/  q6v5_handover_interrupt ; 
 int /*<<< orphan*/  q6v5_ready_interrupt ; 
 int /*<<< orphan*/  q6v5_stop_interrupt ; 
 int /*<<< orphan*/  q6v5_wdog_interrupt ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 

int FUNC8(struct qcom_q6v5 *q6v5, struct platform_device *pdev,
		   struct rproc *rproc, int crash_reason,
		   void (*handover)(struct qcom_q6v5 *q6v5))
{
	int ret;

	q6v5->rproc = rproc;
	q6v5->dev = &pdev->dev;
	q6v5->crash_reason = crash_reason;
	q6v5->handover = handover;

	FUNC5(&q6v5->start_done);
	FUNC5(&q6v5->stop_done);

	q6v5->wdog_irq = FUNC6(pdev, "wdog");
	if (q6v5->wdog_irq < 0)
		return q6v5->wdog_irq;

	ret = FUNC3(&pdev->dev, q6v5->wdog_irq,
					NULL, q6v5_wdog_interrupt,
					IRQF_TRIGGER_RISING | IRQF_ONESHOT,
					"q6v5 wdog", q6v5);
	if (ret) {
		FUNC2(&pdev->dev, "failed to acquire wdog IRQ\n");
		return ret;
	}

	q6v5->fatal_irq = FUNC6(pdev, "fatal");
	if (q6v5->fatal_irq < 0)
		return q6v5->fatal_irq;

	ret = FUNC3(&pdev->dev, q6v5->fatal_irq,
					NULL, q6v5_fatal_interrupt,
					IRQF_TRIGGER_RISING | IRQF_ONESHOT,
					"q6v5 fatal", q6v5);
	if (ret) {
		FUNC2(&pdev->dev, "failed to acquire fatal IRQ\n");
		return ret;
	}

	q6v5->ready_irq = FUNC6(pdev, "ready");
	if (q6v5->ready_irq < 0)
		return q6v5->ready_irq;

	ret = FUNC3(&pdev->dev, q6v5->ready_irq,
					NULL, q6v5_ready_interrupt,
					IRQF_TRIGGER_RISING | IRQF_ONESHOT,
					"q6v5 ready", q6v5);
	if (ret) {
		FUNC2(&pdev->dev, "failed to acquire ready IRQ\n");
		return ret;
	}

	q6v5->handover_irq = FUNC6(pdev, "handover");
	if (q6v5->handover_irq < 0)
		return q6v5->handover_irq;

	ret = FUNC3(&pdev->dev, q6v5->handover_irq,
					NULL, q6v5_handover_interrupt,
					IRQF_TRIGGER_RISING | IRQF_ONESHOT,
					"q6v5 handover", q6v5);
	if (ret) {
		FUNC2(&pdev->dev, "failed to acquire handover IRQ\n");
		return ret;
	}
	FUNC4(q6v5->handover_irq);

	q6v5->stop_irq = FUNC6(pdev, "stop-ack");
	if (q6v5->stop_irq < 0)
		return q6v5->stop_irq;

	ret = FUNC3(&pdev->dev, q6v5->stop_irq,
					NULL, q6v5_stop_interrupt,
					IRQF_TRIGGER_RISING | IRQF_ONESHOT,
					"q6v5 stop", q6v5);
	if (ret) {
		FUNC2(&pdev->dev, "failed to acquire stop-ack IRQ\n");
		return ret;
	}

	q6v5->state = FUNC7(&pdev->dev, "stop", &q6v5->stop_bit);
	if (FUNC0(q6v5->state)) {
		FUNC2(&pdev->dev, "failed to acquire stop state\n");
		return FUNC1(q6v5->state);
	}

	return 0;
}