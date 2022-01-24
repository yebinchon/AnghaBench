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
struct v4l2_subdev_mbus_code_enum {scalar_t__ pad; size_t index; int /*<<< orphan*/  code; int /*<<< orphan*/  which; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {int /*<<< orphan*/  code; } ;
struct iss_format_info {int /*<<< orphan*/  uncompressed; } ;
struct iss_csi2_device {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ CSI2_PAD_SINK ; 
 int EINVAL ; 
 struct v4l2_mbus_framefmt* FUNC1 (struct iss_csi2_device*,struct v4l2_subdev_pad_config*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * csi2_input_fmts ; 
 struct iss_format_info* FUNC2 (int /*<<< orphan*/ ) ; 
 struct iss_csi2_device* FUNC3 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC4(struct v4l2_subdev *sd,
			       struct v4l2_subdev_pad_config *cfg,
			       struct v4l2_subdev_mbus_code_enum *code)
{
	struct iss_csi2_device *csi2 = FUNC3(sd);
	struct v4l2_mbus_framefmt *format;
	const struct iss_format_info *info;

	if (code->pad == CSI2_PAD_SINK) {
		if (code->index >= FUNC0(csi2_input_fmts))
			return -EINVAL;

		code->code = csi2_input_fmts[code->index];
	} else {
		format = FUNC1(csi2, cfg, CSI2_PAD_SINK,
					   code->which);
		switch (code->index) {
		case 0:
			/* Passthrough sink pad code */
			code->code = format->code;
			break;
		case 1:
			/* Uncompressed code */
			info = FUNC2(format->code);
			if (info->uncompressed == format->code)
				return -EINVAL;

			code->code = info->uncompressed;
			break;
		default:
			return -EINVAL;
		}
	}

	return 0;
}