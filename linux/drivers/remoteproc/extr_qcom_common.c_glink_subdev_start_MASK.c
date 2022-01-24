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
struct qcom_rproc_glink {int /*<<< orphan*/  edge; int /*<<< orphan*/  node; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct qcom_rproc_glink* FUNC2 (struct rproc_subdev*) ; 

__attribute__((used)) static int FUNC3(struct rproc_subdev *subdev)
{
	struct qcom_rproc_glink *glink = FUNC2(subdev);

	glink->edge = FUNC1(glink->dev, glink->node);

	return FUNC0(glink->edge);
}