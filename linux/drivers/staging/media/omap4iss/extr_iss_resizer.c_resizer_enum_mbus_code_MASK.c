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
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_mbus_code_enum {int pad; size_t index; int /*<<< orphan*/  code; int /*<<< orphan*/  which; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {int /*<<< orphan*/  code; } ;
struct iss_resizer_device {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 int EINVAL ; 
#define  MEDIA_BUS_FMT_UYVY8_1X16 130 
 int /*<<< orphan*/  MEDIA_BUS_FMT_YUYV8_1_5X8 ; 
#define  RESIZER_PAD_SINK 129 
#define  RESIZER_PAD_SOURCE_MEM 128 
 struct v4l2_mbus_framefmt* FUNC1 (struct iss_resizer_device*,struct v4l2_subdev_pad_config*,int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * resizer_fmts ; 
 struct iss_resizer_device* FUNC2 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC3(struct v4l2_subdev *sd,
				  struct v4l2_subdev_pad_config *cfg,
				  struct v4l2_subdev_mbus_code_enum *code)
{
	struct iss_resizer_device *resizer = FUNC2(sd);
	struct v4l2_mbus_framefmt *format;

	switch (code->pad) {
	case RESIZER_PAD_SINK:
		if (code->index >= FUNC0(resizer_fmts))
			return -EINVAL;

		code->code = resizer_fmts[code->index];
		break;

	case RESIZER_PAD_SOURCE_MEM:
		format = FUNC1(resizer, cfg, RESIZER_PAD_SINK,
					      code->which);

		if (code->index == 0) {
			code->code = format->code;
			break;
		}

		switch (format->code) {
		case MEDIA_BUS_FMT_UYVY8_1X16:
			if (code->index == 1)
				code->code = MEDIA_BUS_FMT_YUYV8_1_5X8;
			else
				return -EINVAL;
			break;
		default:
			if (code->index != 0)
				return -EINVAL;
		}

		break;

	default:
		return -EINVAL;
	}

	return 0;
}