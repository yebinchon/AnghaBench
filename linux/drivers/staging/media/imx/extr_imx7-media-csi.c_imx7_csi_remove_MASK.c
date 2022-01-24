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
struct v4l2_subdev {int dummy; } ;
struct platform_device {int dummy; } ;
struct imx_media_dev {int /*<<< orphan*/  md; int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  notifier; } ;
struct imx7_csi {int /*<<< orphan*/  lock; int /*<<< orphan*/  ctrl_hdlr; int /*<<< orphan*/  vdev; struct imx_media_dev* imxmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct v4l2_subdev* FUNC5 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct imx7_csi* FUNC11 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct v4l2_subdev *sd = FUNC5(pdev);
	struct imx7_csi *csi = FUNC11(sd);
	struct imx_media_dev *imxmd = csi->imxmd;

	FUNC7(&imxmd->notifier);
	FUNC6(&imxmd->notifier);

	FUNC3(&imxmd->md);
	FUNC10(&imxmd->v4l2_dev);
	FUNC2(&imxmd->md);

	FUNC1(csi->vdev);
	FUNC0(csi->vdev);

	FUNC8(sd);
	FUNC9(&csi->ctrl_hdlr);

	FUNC4(&csi->lock);

	return 0;
}