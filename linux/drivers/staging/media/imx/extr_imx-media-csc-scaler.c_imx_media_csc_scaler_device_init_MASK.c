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
struct video_device {int /*<<< orphan*/ * lock; } ;
struct imx_media_video_dev {int /*<<< orphan*/  list; struct video_device* vfd; } ;
struct ipu_csc_scaler_priv {struct imx_media_video_dev vdev; int /*<<< orphan*/  m2m_dev; int /*<<< orphan*/  mutex; int /*<<< orphan*/  dev; struct imx_media_dev* md; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct imx_media_dev {int /*<<< orphan*/  v4l2_dev; TYPE_1__ md; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct imx_media_video_dev* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 struct video_device ipu_csc_scaler_videodev_template ; 
 int /*<<< orphan*/  FUNC4 (struct ipu_csc_scaler_priv*) ; 
 struct ipu_csc_scaler_priv* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  m2m_ops ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct video_device* FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct video_device*,struct ipu_csc_scaler_priv*) ; 

struct imx_media_video_dev *
FUNC11(struct imx_media_dev *md)
{
	struct ipu_csc_scaler_priv *priv;
	struct video_device *vfd;
	int ret;

	priv = FUNC5(sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return FUNC0(-ENOMEM);

	priv->md = md;
	priv->dev = md->md.dev;

	FUNC6(&priv->mutex);

	vfd = FUNC9();
	if (!vfd) {
		ret = -ENOMEM;
		goto err_vfd;
	}

	*vfd = ipu_csc_scaler_videodev_template;
	vfd->lock = &priv->mutex;
	priv->vdev.vfd = vfd;

	FUNC1(&priv->vdev.list);

	FUNC10(vfd, priv);

	priv->m2m_dev = FUNC8(&m2m_ops);
	if (FUNC2(priv->m2m_dev)) {
		ret = FUNC3(priv->m2m_dev);
		FUNC7(&md->v4l2_dev, "Failed to init mem2mem device: %d\n",
			 ret);
		goto err_m2m;
	}

	return &priv->vdev;

err_m2m:
	FUNC10(vfd, NULL);
err_vfd:
	FUNC4(priv);
	return FUNC0(ret);
}