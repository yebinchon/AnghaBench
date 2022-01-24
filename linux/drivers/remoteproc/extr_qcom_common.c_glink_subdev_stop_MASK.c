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
struct qcom_rproc_glink {int /*<<< orphan*/ * edge; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct qcom_rproc_glink* FUNC1 (struct rproc_subdev*) ; 

__attribute__((used)) static void FUNC2(struct rproc_subdev *subdev, bool crashed)
{
	struct qcom_rproc_glink *glink = FUNC1(subdev);

	FUNC0(glink->edge);
	glink->edge = NULL;
}