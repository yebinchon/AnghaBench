#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct media_device_ops {int dummy; } ;
struct TYPE_6__ {struct device* dev; struct media_device_ops const* ops; int /*<<< orphan*/  model; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; int /*<<< orphan*/  notify; TYPE_3__* mdev; } ;
struct imx_media_dev {TYPE_3__ md; int /*<<< orphan*/  notifier; int /*<<< orphan*/  vdev_list; TYPE_1__ v4l2_dev; int /*<<< orphan*/  mutex; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct imx_media_dev* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct imx_media_dev*) ; 
 struct imx_media_dev* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct media_device_ops const imx_media_md_ops ; 
 int /*<<< orphan*/  imx_media_notify ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct device*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,char*,int) ; 

struct imx_media_dev *FUNC11(struct device *dev,
					 const struct media_device_ops *ops)
{
	struct imx_media_dev *imxmd;
	int ret;

	imxmd = FUNC3(dev, sizeof(*imxmd), GFP_KERNEL);
	if (!imxmd)
		return FUNC0(-ENOMEM);

	FUNC2(dev, imxmd);

	FUNC7(imxmd->md.model, "imx-media", sizeof(imxmd->md.model));
	imxmd->md.ops = ops ? ops : &imx_media_md_ops;
	imxmd->md.dev = dev;

	FUNC6(&imxmd->mutex);

	imxmd->v4l2_dev.mdev = &imxmd->md;
	imxmd->v4l2_dev.notify = imx_media_notify;
	FUNC7(imxmd->v4l2_dev.name, "imx-media",
		sizeof(imxmd->v4l2_dev.name));

	FUNC5(&imxmd->md);

	ret = FUNC9(dev, &imxmd->v4l2_dev);
	if (ret < 0) {
		FUNC10(&imxmd->v4l2_dev,
			 "Failed to register v4l2_device: %d\n", ret);
		goto cleanup;
	}

	FUNC1(&imxmd->vdev_list);

	FUNC8(&imxmd->notifier);

	return imxmd;

cleanup:
	FUNC4(&imxmd->md);

	return FUNC0(ret);
}