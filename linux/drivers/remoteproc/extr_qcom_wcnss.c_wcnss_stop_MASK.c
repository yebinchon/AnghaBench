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
struct rproc {scalar_t__ priv; } ;
struct qcom_wcnss {int /*<<< orphan*/  dev; int /*<<< orphan*/  stop_bit; scalar_t__ state; int /*<<< orphan*/  stop_done; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WCNSS_PAS_ID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct rproc *rproc)
{
	struct qcom_wcnss *wcnss = (struct qcom_wcnss *)rproc->priv;
	int ret;

	if (wcnss->state) {
		FUNC4(wcnss->state,
					    FUNC0(wcnss->stop_bit),
					    FUNC0(wcnss->stop_bit));

		ret = FUNC5(&wcnss->stop_done,
						  FUNC2(5000));
		if (ret == 0)
			FUNC1(wcnss->dev, "timed out on wait\n");

		FUNC4(wcnss->state,
					    FUNC0(wcnss->stop_bit),
					    0);
	}

	ret = FUNC3(WCNSS_PAS_ID);
	if (ret)
		FUNC1(wcnss->dev, "failed to shutdown: %d\n", ret);

	return ret;
}