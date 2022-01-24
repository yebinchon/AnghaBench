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
struct rproc {int bootaddr; struct q6v5_wcss* priv; } ;
struct q6v5_wcss {int /*<<< orphan*/  wcss_reset; int /*<<< orphan*/  wcss_q6_reset; int /*<<< orphan*/  dev; int /*<<< orphan*/  q6v5; scalar_t__ reg_base; scalar_t__ halt_nc; int /*<<< orphan*/  halt_map; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int HZ ; 
 scalar_t__ Q6SS_RST_EVB ; 
 scalar_t__ TCSR_GLOBAL_CFG0 ; 
 scalar_t__ TCSR_GLOBAL_CFG1 ; 
 int /*<<< orphan*/  TCSR_WCSS_CLK_ENABLE ; 
 int TCSR_WCSS_CLK_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct q6v5_wcss*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct rproc *rproc)
{
	struct q6v5_wcss *wcss = rproc->priv;
	int ret;

	FUNC2(&wcss->q6v5);

	/* Release Q6 and WCSS reset */
	ret = FUNC6(wcss->wcss_reset);
	if (ret) {
		FUNC0(wcss->dev, "wcss_reset failed\n");
		return ret;
	}

	ret = FUNC6(wcss->wcss_q6_reset);
	if (ret) {
		FUNC0(wcss->dev, "wcss_q6_reset failed\n");
		goto wcss_reset;
	}

	/* Lithium configuration - clock gating and bus arbitration */
	ret = FUNC4(wcss->halt_map,
				 wcss->halt_nc + TCSR_GLOBAL_CFG0,
				 TCSR_WCSS_CLK_MASK,
				 TCSR_WCSS_CLK_ENABLE);
	if (ret)
		goto wcss_q6_reset;

	ret = FUNC4(wcss->halt_map,
				 wcss->halt_nc + TCSR_GLOBAL_CFG1,
				 1, 0);
	if (ret)
		goto wcss_q6_reset;

	/* Write bootaddr to EVB so that Q6WCSS will jump there after reset */
	FUNC7(rproc->bootaddr >> 4, wcss->reg_base + Q6SS_RST_EVB);

	ret = FUNC1(wcss);
	if (ret)
		goto wcss_q6_reset;

	ret = FUNC3(&wcss->q6v5, 5 * HZ);
	if (ret == -ETIMEDOUT)
		FUNC0(wcss->dev, "start timed out\n");

	return ret;

wcss_q6_reset:
	FUNC5(wcss->wcss_q6_reset);

wcss_reset:
	FUNC5(wcss->wcss_reset);

	return ret;
}