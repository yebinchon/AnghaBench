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
struct rproc {struct q6v5_wcss* priv; } ;
struct q6v5_wcss {int /*<<< orphan*/  q6v5; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct q6v5_wcss*) ; 
 int FUNC2 (struct q6v5_wcss*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct rproc *rproc)
{
	struct q6v5_wcss *wcss = rproc->priv;
	int ret;

	/* WCSS powerdown */
	ret = FUNC3(&wcss->q6v5);
	if (ret == -ETIMEDOUT) {
		FUNC0(wcss->dev, "timed out on wait\n");
		return ret;
	}

	ret = FUNC2(wcss);
	if (ret)
		return ret;

	/* Q6 Power down */
	ret = FUNC1(wcss);
	if (ret)
		return ret;

	FUNC4(&wcss->q6v5);

	return 0;
}