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
struct v4l2_mbus_framefmt {int /*<<< orphan*/  field; int /*<<< orphan*/  colorspace; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct v4l2_subdev_format {struct v4l2_mbus_framefmt format; int /*<<< orphan*/  which; } ;
struct v4l2_subdev {int /*<<< orphan*/  ctrl_handler; int /*<<< orphan*/  grp_id; } ;
struct soc_camera_device {int /*<<< orphan*/  field; int /*<<< orphan*/  colorspace; int /*<<< orphan*/  user_height; int /*<<< orphan*/  user_width; int /*<<< orphan*/  pdev; int /*<<< orphan*/  ctrl_handler; TYPE_1__* vdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  tvnorms; } ;

/* Variables and functions */
 int /*<<< orphan*/  V4L2_FIELD_ANY ; 
 int /*<<< orphan*/  V4L2_SUBDEV_FORMAT_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  g_tvnorms ; 
 int /*<<< orphan*/  get_fmt ; 
 int /*<<< orphan*/  pad ; 
 int FUNC1 (struct soc_camera_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct soc_camera_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct soc_camera_device*) ; 
 int FUNC4 (struct soc_camera_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct soc_camera_device*) ; 
 struct v4l2_subdev* FUNC6 (struct soc_camera_device*) ; 
 int FUNC7 (struct soc_camera_device*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (struct v4l2_subdev*,struct soc_camera_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct v4l2_subdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/  video ; 

__attribute__((used)) static int FUNC11(struct soc_camera_device *icd)
{
	struct v4l2_subdev *sd = FUNC6(icd);
	struct v4l2_subdev_format fmt = {
		.which = V4L2_SUBDEV_FORMAT_ACTIVE,
	};
	struct v4l2_mbus_framefmt *mf = &fmt.format;
	int ret;

	sd->grp_id = FUNC3(icd);
	FUNC9(sd, icd);

	FUNC10(sd, video, g_tvnorms, &icd->vdev->tvnorms);

	ret = FUNC8(&icd->ctrl_handler, sd->ctrl_handler,
				    NULL, true);
	if (ret < 0)
		return ret;

	ret = FUNC1(icd);
	if (ret < 0) {
		FUNC0(icd->pdev, "Couldn't activate the camera: %d\n", ret);
		return ret;
	}

	/* At this point client .probe() should have run already */
	ret = FUNC4(icd);
	if (ret < 0)
		goto eusrfmt;

	icd->field = V4L2_FIELD_ANY;

	ret = FUNC7(icd);
	if (ret < 0)
		goto evidstart;

	/* Try to improve our guess of a reasonable window format */
	if (!FUNC10(sd, pad, get_fmt, NULL, &fmt)) {
		icd->user_width		= mf->width;
		icd->user_height	= mf->height;
		icd->colorspace		= mf->colorspace;
		icd->field		= mf->field;
	}
	FUNC5(icd);

	return 0;

evidstart:
	FUNC2(icd);
eusrfmt:
	FUNC5(icd);

	return ret;
}