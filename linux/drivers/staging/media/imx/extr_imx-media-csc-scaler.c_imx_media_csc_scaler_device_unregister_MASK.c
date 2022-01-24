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
struct video_device {int dummy; } ;
struct TYPE_2__ {struct video_device* vfd; } ;
struct ipu_csc_scaler_priv {int /*<<< orphan*/  mutex; TYPE_1__ vdev; } ;
struct imx_media_video_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct ipu_csc_scaler_priv* FUNC2 (struct imx_media_video_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct video_device*) ; 

void FUNC4(struct imx_media_video_dev *vdev)
{
	struct ipu_csc_scaler_priv *priv = FUNC2(vdev);
	struct video_device *vfd = priv->vdev.vfd;

	FUNC0(&priv->mutex);

	FUNC3(vfd);

	FUNC1(&priv->mutex);
}