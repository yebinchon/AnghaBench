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
struct fsl_qspi {int /*<<< orphan*/  clk_en; int /*<<< orphan*/  clk; int /*<<< orphan*/  pm_qos_req; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct fsl_qspi*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct fsl_qspi *q)
{
	if (FUNC1(q))
		FUNC2(&q->pm_qos_req);

	FUNC0(q->clk);
	FUNC0(q->clk_en);
}