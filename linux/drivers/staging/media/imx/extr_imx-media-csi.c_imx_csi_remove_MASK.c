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
struct csi_priv {int /*<<< orphan*/  vdev; int /*<<< orphan*/  lock; int /*<<< orphan*/  ctrl_hdlr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct v4l2_subdev* FUNC3 (struct platform_device*) ; 
 struct csi_priv* FUNC4 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC5 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct v4l2_subdev *sd = FUNC3(pdev);
	struct csi_priv *priv = FUNC4(sd);

	FUNC6(&priv->ctrl_hdlr);
	FUNC2(&priv->lock);
	FUNC0(priv->vdev);
	FUNC5(sd);
	FUNC1(&sd->entity);

	return 0;
}