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
struct qcom_adsp {int /*<<< orphan*/  q6v5; int /*<<< orphan*/  dev; int /*<<< orphan*/  pas_id; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct rproc *rproc)
{
	struct qcom_adsp *adsp = (struct qcom_adsp *)rproc->priv;
	int handover;
	int ret;

	ret = FUNC2(&adsp->q6v5);
	if (ret == -ETIMEDOUT)
		FUNC0(adsp->dev, "timed out on wait\n");

	ret = FUNC4(adsp->pas_id);
	if (ret)
		FUNC0(adsp->dev, "failed to shutdown: %d\n", ret);

	handover = FUNC3(&adsp->q6v5);
	if (handover)
		FUNC1(&adsp->q6v5);

	return ret;
}