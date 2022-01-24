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
struct qcom_q6v5 {int /*<<< orphan*/  rproc; int /*<<< orphan*/  dev; int /*<<< orphan*/  crash_reason; int /*<<< orphan*/  stop_done; int /*<<< orphan*/  running; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  QCOM_SMEM_HOST_ANY ; 
 int /*<<< orphan*/  RPROC_WATCHDOG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *data)
{
	struct qcom_q6v5 *q6v5 = data;
	size_t len;
	char *msg;

	/* Sometimes the stop triggers a watchdog rather than a stop-ack */
	if (!q6v5->running) {
		FUNC1(&q6v5->stop_done);
		return IRQ_HANDLED;
	}

	msg = FUNC3(QCOM_SMEM_HOST_ANY, q6v5->crash_reason, &len);
	if (!FUNC0(msg) && len > 0 && msg[0])
		FUNC2(q6v5->dev, "watchdog received: %s\n", msg);
	else
		FUNC2(q6v5->dev, "watchdog without message\n");

	FUNC4(q6v5->rproc, RPROC_WATCHDOG);

	return IRQ_HANDLED;
}