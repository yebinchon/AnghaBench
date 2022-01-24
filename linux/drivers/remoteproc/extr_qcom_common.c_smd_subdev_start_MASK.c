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
struct rproc_subdev {int dummy; } ;
struct qcom_rproc_subdev {int /*<<< orphan*/  edge; int /*<<< orphan*/  node; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct qcom_rproc_subdev* FUNC2 (struct rproc_subdev*) ; 

__attribute__((used)) static int FUNC3(struct rproc_subdev *subdev)
{
	struct qcom_rproc_subdev *smd = FUNC2(subdev);

	smd->edge = FUNC1(smd->dev, smd->node);

	return FUNC0(smd->edge);
}