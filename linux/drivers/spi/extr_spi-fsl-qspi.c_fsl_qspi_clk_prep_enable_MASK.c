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
struct fsl_qspi {int /*<<< orphan*/  pm_qos_req; int /*<<< orphan*/  clk_en; int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  PM_QOS_CPU_DMA_LATENCY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct fsl_qspi*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct fsl_qspi *q)
{
	int ret;

	ret = FUNC1(q->clk_en);
	if (ret)
		return ret;

	ret = FUNC1(q->clk);
	if (ret) {
		FUNC0(q->clk_en);
		return ret;
	}

	if (FUNC2(q))
		FUNC3(&q->pm_qos_req, PM_QOS_CPU_DMA_LATENCY, 0);

	return 0;
}