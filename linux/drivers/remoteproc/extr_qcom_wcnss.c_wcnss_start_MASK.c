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
struct qcom_wcnss {scalar_t__ ready_irq; int /*<<< orphan*/  iris_lock; int /*<<< orphan*/  vregs; int /*<<< orphan*/  num_vregs; int /*<<< orphan*/  iris; int /*<<< orphan*/  dev; int /*<<< orphan*/  start_done; } ;

/* Variables and functions */
 int EINVAL ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  WCNSS_PAS_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct qcom_wcnss*) ; 
 int /*<<< orphan*/  FUNC12 (struct qcom_wcnss*) ; 

__attribute__((used)) static int FUNC13(struct rproc *rproc)
{
	struct qcom_wcnss *wcnss = (struct qcom_wcnss *)rproc->priv;
	int ret;

	FUNC2(&wcnss->iris_lock);
	if (!wcnss->iris) {
		FUNC0(wcnss->dev, "no iris registered\n");
		ret = -EINVAL;
		goto release_iris_lock;
	}

	ret = FUNC9(wcnss->num_vregs, wcnss->vregs);
	if (ret)
		goto release_iris_lock;

	ret = FUNC5(wcnss->iris);
	if (ret)
		goto disable_regulators;

	FUNC12(wcnss);
	FUNC11(wcnss);

	ret = FUNC6(WCNSS_PAS_ID);
	if (ret) {
		FUNC0(wcnss->dev,
			"failed to authenticate image and release reset\n");
		goto disable_iris;
	}

	ret = FUNC10(&wcnss->start_done,
					  FUNC1(5000));
	if (wcnss->ready_irq > 0 && ret == 0) {
		/* We have a ready_irq, but it didn't fire in time. */
		FUNC0(wcnss->dev, "start timed out\n");
		FUNC7(WCNSS_PAS_ID);
		ret = -ETIMEDOUT;
		goto disable_iris;
	}

	ret = 0;

disable_iris:
	FUNC4(wcnss->iris);
disable_regulators:
	FUNC8(wcnss->num_vregs, wcnss->vregs);
release_iris_lock:
	FUNC3(&wcnss->iris_lock);

	return ret;
}