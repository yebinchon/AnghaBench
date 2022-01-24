#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct video_device {int /*<<< orphan*/  entity; } ;
struct imx_media_video_dev {int dummy; } ;
struct TYPE_2__ {struct video_device* vfd; } ;
struct capture_priv {int /*<<< orphan*/  mutex; TYPE_1__ vdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct capture_priv* FUNC3 (struct imx_media_video_dev*) ; 
 scalar_t__ FUNC4 (struct video_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct video_device*) ; 

void FUNC6(struct imx_media_video_dev *vdev)
{
	struct capture_priv *priv = FUNC3(vdev);
	struct video_device *vfd = priv->vdev.vfd;

	FUNC1(&priv->mutex);

	if (FUNC4(vfd)) {
		FUNC5(vfd);
		FUNC0(&vfd->entity);
	}

	FUNC2(&priv->mutex);
}