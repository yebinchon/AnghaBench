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
struct qcom_q6v5 {int running; int /*<<< orphan*/  rproc; int /*<<< orphan*/  dev; int /*<<< orphan*/  crash_reason; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  QCOM_SMEM_HOST_ANY ; 
 int /*<<< orphan*/  RPROC_FATAL_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *data)
{
	struct qcom_q6v5 *q6v5 = data;
	size_t len;
	char *msg;

	msg = FUNC2(QCOM_SMEM_HOST_ANY, q6v5->crash_reason, &len);
	if (!FUNC0(msg) && len > 0 && msg[0])
		FUNC1(q6v5->dev, "fatal error received: %s\n", msg);
	else
		FUNC1(q6v5->dev, "fatal error without message\n");

	q6v5->running = false;
	FUNC3(q6v5->rproc, RPROC_FATAL_ERROR);

	return IRQ_HANDLED;
}