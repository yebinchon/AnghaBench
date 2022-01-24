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
struct qcom_q6v5 {int /*<<< orphan*/  stop_bit; int /*<<< orphan*/  state; int /*<<< orphan*/  stop_done; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ETIMEDOUT ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 

int FUNC3(struct qcom_q6v5 *q6v5)
{
	int ret;

	FUNC1(q6v5->state,
				    FUNC0(q6v5->stop_bit), FUNC0(q6v5->stop_bit));

	ret = FUNC2(&q6v5->stop_done, 5 * HZ);

	FUNC1(q6v5->state, FUNC0(q6v5->stop_bit), 0);

	return ret == 0 ? -ETIMEDOUT : 0;
}