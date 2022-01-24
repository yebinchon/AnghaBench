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
struct rproc {int dummy; } ;
struct qcom_rproc_subdev {int /*<<< orphan*/  node; int /*<<< orphan*/  subdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rproc*,int /*<<< orphan*/ *) ; 

void FUNC2(struct rproc *rproc, struct qcom_rproc_subdev *smd)
{
	if (!smd->node)
		return;

	FUNC1(rproc, &smd->subdev);
	FUNC0(smd->node);
}