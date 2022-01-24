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
struct video_device {int /*<<< orphan*/ * queue; int /*<<< orphan*/ * lock; int /*<<< orphan*/  name; } ;
struct v4l2_subdev {char* name; } ;
struct imx_media_video_dev {int /*<<< orphan*/  list; struct video_device* vfd; } ;
struct device {int dummy; } ;
struct capture_priv {int src_sd_pad; struct imx_media_video_dev vdev; int /*<<< orphan*/  ctrl_hdlr; int /*<<< orphan*/  q; int /*<<< orphan*/  mutex; int /*<<< orphan*/  q_lock; struct device* dev; struct v4l2_subdev* src_sd; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct imx_media_video_dev* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct video_device capture_videodev ; 
 struct capture_priv* FUNC2 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct video_device* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct video_device*,struct capture_priv*) ; 

struct imx_media_video_dev *
FUNC9(struct device *dev, struct v4l2_subdev *src_sd,
			      int pad)
{
	struct capture_priv *priv;
	struct video_device *vfd;

	priv = FUNC2(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return FUNC0(-ENOMEM);

	priv->src_sd = src_sd;
	priv->src_sd_pad = pad;
	priv->dev = dev;

	FUNC3(&priv->mutex);
	FUNC5(&priv->q_lock);

	FUNC4(capture_videodev.name, sizeof(capture_videodev.name),
		 "%s capture", src_sd->name);

	vfd = FUNC7();
	if (!vfd)
		return FUNC0(-ENOMEM);

	*vfd = capture_videodev;
	vfd->lock = &priv->mutex;
	vfd->queue = &priv->q;
	priv->vdev.vfd = vfd;

	FUNC1(&priv->vdev.list);

	FUNC8(vfd, priv);

	FUNC6(&priv->ctrl_hdlr, 0);

	return &priv->vdev;
}