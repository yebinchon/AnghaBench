#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct video_device {char* name; int /*<<< orphan*/  num; TYPE_1__* v4l2_dev; int /*<<< orphan*/ * lock; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {TYPE_5__* mdev; } ;
struct TYPE_8__ {int /*<<< orphan*/ * ops; int /*<<< orphan*/  model; int /*<<< orphan*/ * dev; } ;
struct cedrus_dev {TYPE_1__ v4l2_dev; int /*<<< orphan*/  m2m_dev; struct video_device vfd; TYPE_5__ mdev; int /*<<< orphan*/  dev_mutex; int /*<<< orphan*/ ** dec_ops; struct platform_device* pdev; int /*<<< orphan*/ * dev; } ;

/* Variables and functions */
 size_t CEDRUS_CODEC_H264 ; 
 size_t CEDRUS_CODEC_MPEG2 ; 
 int /*<<< orphan*/  CEDRUS_NAME ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MEDIA_ENT_F_PROC_VIDEO_DECODER ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VFL_TYPE_GRABBER ; 
 int /*<<< orphan*/  cedrus_dec_ops_h264 ; 
 int /*<<< orphan*/  cedrus_dec_ops_mpeg2 ; 
 int FUNC2 (struct cedrus_dev*) ; 
 int /*<<< orphan*/  cedrus_m2m_media_ops ; 
 int /*<<< orphan*/  cedrus_m2m_ops ; 
 struct video_device cedrus_video_device ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 struct cedrus_dev* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 int FUNC6 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct cedrus_dev*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC11 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (int /*<<< orphan*/ ,struct video_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int FUNC19 (struct video_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct video_device*,struct cedrus_dev*) ; 
 int /*<<< orphan*/  FUNC21 (struct video_device*) ; 

__attribute__((used)) static int FUNC22(struct platform_device *pdev)
{
	struct cedrus_dev *dev;
	struct video_device *vfd;
	int ret;

	dev = FUNC4(&pdev->dev, sizeof(*dev), GFP_KERNEL);
	if (!dev)
		return -ENOMEM;

	dev->vfd = cedrus_video_device;
	dev->dev = &pdev->dev;
	dev->pdev = pdev;

	ret = FUNC2(dev);
	if (ret) {
		FUNC3(&pdev->dev, "Failed to probe hardware\n");
		return ret;
	}

	dev->dec_ops[CEDRUS_CODEC_MPEG2] = &cedrus_dec_ops_mpeg2;
	dev->dec_ops[CEDRUS_CODEC_H264] = &cedrus_dec_ops_h264;

	FUNC7(&dev->dev_mutex);

	ret = FUNC11(&pdev->dev, &dev->v4l2_dev);
	if (ret) {
		FUNC3(&pdev->dev, "Failed to register V4L2 device\n");
		return ret;
	}

	vfd = &dev->vfd;
	vfd->lock = &dev->dev_mutex;
	vfd->v4l2_dev = &dev->v4l2_dev;

	FUNC9(vfd->name, sizeof(vfd->name), "%s", cedrus_video_device.name);
	FUNC20(vfd, dev);

	dev->m2m_dev = FUNC15(&cedrus_m2m_ops);
	if (FUNC0(dev->m2m_dev)) {
		FUNC13(&dev->v4l2_dev,
			 "Failed to initialize V4L2 M2M device\n");
		ret = FUNC1(dev->m2m_dev);

		goto err_v4l2;
	}

	dev->mdev.dev = &pdev->dev;
	FUNC10(dev->mdev.model, CEDRUS_NAME, sizeof(dev->mdev.model));

	FUNC5(&dev->mdev);
	dev->mdev.ops = &cedrus_m2m_media_ops;
	dev->v4l2_dev.mdev = &dev->mdev;

	ret = FUNC19(vfd, VFL_TYPE_GRABBER, 0);
	if (ret) {
		FUNC13(&dev->v4l2_dev, "Failed to register video device\n");
		goto err_m2m;
	}

	FUNC14(&dev->v4l2_dev,
		  "Device registered as /dev/video%d\n", vfd->num);

	ret = FUNC16(dev->m2m_dev, vfd,
						 MEDIA_ENT_F_PROC_VIDEO_DECODER);
	if (ret) {
		FUNC13(&dev->v4l2_dev,
			 "Failed to initialize V4L2 M2M media controller\n");
		goto err_video;
	}

	ret = FUNC6(&dev->mdev);
	if (ret) {
		FUNC13(&dev->v4l2_dev, "Failed to register media device\n");
		goto err_m2m_mc;
	}

	FUNC8(pdev, dev);

	return 0;

err_m2m_mc:
	FUNC18(dev->m2m_dev);
err_video:
	FUNC21(&dev->vfd);
err_m2m:
	FUNC17(dev->m2m_dev);
err_v4l2:
	FUNC12(&dev->v4l2_dev);

	return ret;
}