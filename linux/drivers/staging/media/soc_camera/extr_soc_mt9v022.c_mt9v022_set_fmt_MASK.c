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
struct v4l2_mbus_framefmt {scalar_t__ code; int /*<<< orphan*/  colorspace; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct v4l2_subdev_pad_config {struct v4l2_mbus_framefmt try_fmt; } ;
struct v4l2_subdev_format {scalar_t__ which; scalar_t__ pad; struct v4l2_mbus_framefmt format; } ;
struct v4l2_subdev {int dummy; } ;
struct mt9v022_datafmt {scalar_t__ code; int /*<<< orphan*/  colorspace; } ;
struct mt9v022 {struct mt9v022_datafmt* fmt; int /*<<< orphan*/  num_fmts; int /*<<< orphan*/  fmts; scalar_t__ y_skip_top; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ MEDIA_BUS_FMT_SBGGR10_1X10 ; 
 scalar_t__ MEDIA_BUS_FMT_SBGGR8_1X8 ; 
 scalar_t__ MT9V022_MAX_HEIGHT ; 
 int /*<<< orphan*/  MT9V022_MAX_WIDTH ; 
 scalar_t__ MT9V022_MIN_HEIGHT ; 
 int /*<<< orphan*/  MT9V022_MIN_WIDTH ; 
 scalar_t__ V4L2_SUBDEV_FORMAT_ACTIVE ; 
 struct mt9v022_datafmt* FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct v4l2_subdev*,struct mt9v022_datafmt const*,struct v4l2_mbus_framefmt*) ; 
 struct mt9v022* FUNC2 (struct i2c_client*) ; 
 struct i2c_client* FUNC3 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,scalar_t__,scalar_t__,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct v4l2_subdev *sd,
		struct v4l2_subdev_pad_config *cfg,
		struct v4l2_subdev_format *format)
{
	struct v4l2_mbus_framefmt *mf = &format->format;
	struct i2c_client *client = FUNC3(sd);
	struct mt9v022 *mt9v022 = FUNC2(client);
	const struct mt9v022_datafmt *fmt;
	int align = mf->code == MEDIA_BUS_FMT_SBGGR8_1X8 ||
		mf->code == MEDIA_BUS_FMT_SBGGR10_1X10;

	if (format->pad)
		return -EINVAL;

	FUNC4(&mf->width, MT9V022_MIN_WIDTH,
		MT9V022_MAX_WIDTH, align,
		&mf->height, MT9V022_MIN_HEIGHT + mt9v022->y_skip_top,
		MT9V022_MAX_HEIGHT + mt9v022->y_skip_top, align, 0);

	fmt = FUNC0(mf->code, mt9v022->fmts,
				   mt9v022->num_fmts);
	if (!fmt) {
		fmt = mt9v022->fmt;
		mf->code = fmt->code;
	}

	mf->colorspace	= fmt->colorspace;

	if (format->which == V4L2_SUBDEV_FORMAT_ACTIVE)
		return FUNC1(sd, fmt, mf);
	cfg->try_fmt = *mf;
	return 0;
}