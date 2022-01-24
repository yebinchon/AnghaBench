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
struct q6v5_wcss {int /*<<< orphan*/  q6v5; int /*<<< orphan*/ * dev; } ;
struct platform_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  WCSS_CRASH_REASON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct platform_device*,struct rproc*) ; 
 int FUNC2 (struct q6v5_wcss*) ; 
 int FUNC3 (struct q6v5_wcss*,struct platform_device*) ; 
 int FUNC4 (struct q6v5_wcss*) ; 
 int /*<<< orphan*/  q6v5_wcss_ops ; 
 int FUNC5 (int /*<<< orphan*/ *,struct platform_device*,struct rproc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct rproc*) ; 
 struct rproc* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct rproc*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct q6v5_wcss *wcss;
	struct rproc *rproc;
	int ret;

	rproc = FUNC7(&pdev->dev, pdev->name, &q6v5_wcss_ops,
			    "IPQ8074/q6_fw.mdt", sizeof(*wcss));
	if (!rproc) {
		FUNC0(&pdev->dev, "failed to allocate rproc\n");
		return -ENOMEM;
	}

	wcss = rproc->priv;
	wcss->dev = &pdev->dev;

	ret = FUNC3(wcss, pdev);
	if (ret)
		goto free_rproc;

	ret = FUNC2(wcss);
	if (ret)
		goto free_rproc;

	ret = FUNC4(wcss);
	if (ret)
		goto free_rproc;

	ret = FUNC5(&wcss->q6v5, pdev, rproc, WCSS_CRASH_REASON, NULL);
	if (ret)
		goto free_rproc;

	ret = FUNC6(rproc);
	if (ret)
		goto free_rproc;

	FUNC1(pdev, rproc);

	return 0;

free_rproc:
	FUNC8(rproc);

	return ret;
}