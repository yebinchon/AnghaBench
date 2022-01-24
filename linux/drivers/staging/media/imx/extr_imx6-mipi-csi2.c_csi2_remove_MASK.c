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
struct v4l2_subdev {int /*<<< orphan*/  entity; } ;
struct platform_device {int dummy; } ;
struct csi2_dev {int /*<<< orphan*/  lock; int /*<<< orphan*/  pllref_clk; int /*<<< orphan*/  dphy_clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct v4l2_subdev* FUNC3 (struct platform_device*) ; 
 struct csi2_dev* FUNC4 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC5 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct v4l2_subdev *sd = FUNC3(pdev);
	struct csi2_dev *csi2 = FUNC4(sd);

	FUNC5(sd);
	FUNC0(csi2->dphy_clk);
	FUNC0(csi2->pllref_clk);
	FUNC2(&csi2->lock);
	FUNC1(&sd->entity);

	return 0;
}