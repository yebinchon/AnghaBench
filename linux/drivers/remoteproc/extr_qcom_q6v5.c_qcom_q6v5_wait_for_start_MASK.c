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
struct qcom_q6v5 {int /*<<< orphan*/  handover_irq; int /*<<< orphan*/  start_done; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 

int FUNC2(struct qcom_q6v5 *q6v5, int timeout)
{
	int ret;

	ret = FUNC1(&q6v5->start_done, timeout);
	if (!ret)
		FUNC0(q6v5->handover_irq);

	return !ret ? -ETIMEDOUT : 0;
}