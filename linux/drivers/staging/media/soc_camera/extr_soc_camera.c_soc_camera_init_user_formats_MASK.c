#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct v4l2_subdev_mbus_code_enum {unsigned int index; int /*<<< orphan*/  code; int /*<<< orphan*/  which; } ;
struct v4l2_subdev {int dummy; } ;
struct soc_camera_host {TYPE_1__* ops; } ;
struct soc_camera_format_xlate {int dummy; } ;
struct soc_camera_device {unsigned int num_user_formats; TYPE_2__* user_formats; TYPE_2__* current_fmt; int /*<<< orphan*/  pdev; int /*<<< orphan*/  parent; } ;
struct TYPE_7__ {int /*<<< orphan*/  code; scalar_t__ host_fmt; } ;
struct TYPE_6__ {int (* get_formats ) (struct soc_camera_device*,unsigned int,TYPE_2__*) ;} ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  V4L2_SUBDEV_FORMAT_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  enum_mbus_code ; 
 int /*<<< orphan*/  pad ; 
 struct v4l2_subdev* FUNC2 (struct soc_camera_device*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct soc_camera_device*,unsigned int,TYPE_2__*) ; 
 int FUNC5 (struct soc_camera_device*,unsigned int,TYPE_2__*) ; 
 struct soc_camera_host* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct v4l2_subdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct v4l2_subdev_mbus_code_enum*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 TYPE_2__* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct soc_camera_device *icd)
{
	struct v4l2_subdev *sd = FUNC2(icd);
	struct soc_camera_host *ici = FUNC6(icd->parent);
	unsigned int i, fmts = 0, raw_fmts = 0;
	int ret;
	struct v4l2_subdev_mbus_code_enum code = {
		.which = V4L2_SUBDEV_FORMAT_ACTIVE,
	};

	while (!FUNC7(sd, pad, enum_mbus_code, NULL, &code)) {
		raw_fmts++;
		code.index++;
	}

	if (!ici->ops->get_formats)
		/*
		 * Fallback mode - the host will have to serve all
		 * sensor-provided formats one-to-one to the user
		 */
		fmts = raw_fmts;
	else
		/*
		 * First pass - only count formats this host-sensor
		 * configuration can provide
		 */
		for (i = 0; i < raw_fmts; i++) {
			ret = ici->ops->get_formats(icd, i, NULL);
			if (ret < 0)
				return ret;
			fmts += ret;
		}

	if (!fmts)
		return -ENXIO;

	icd->user_formats =
		FUNC9(FUNC0(fmts,
				   sizeof(struct soc_camera_format_xlate)));
	if (!icd->user_formats)
		return -ENOMEM;

	FUNC1(icd->pdev, "Found %d supported formats.\n", fmts);

	/* Second pass - actually fill data formats */
	fmts = 0;
	for (i = 0; i < raw_fmts; i++)
		if (!ici->ops->get_formats) {
			code.index = i;
			FUNC7(sd, pad, enum_mbus_code, NULL, &code);
			icd->user_formats[fmts].host_fmt =
				FUNC3(code.code);
			if (icd->user_formats[fmts].host_fmt)
				icd->user_formats[fmts++].code = code.code;
		} else {
			ret = ici->ops->get_formats(icd, i,
						    &icd->user_formats[fmts]);
			if (ret < 0)
				goto egfmt;
			fmts += ret;
		}

	icd->num_user_formats = fmts;
	icd->current_fmt = &icd->user_formats[0];

	return 0;

egfmt:
	FUNC8(icd->user_formats);
	return ret;
}