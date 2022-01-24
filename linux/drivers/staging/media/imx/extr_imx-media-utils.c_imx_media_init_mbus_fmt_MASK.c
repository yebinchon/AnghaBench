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
typedef  scalar_t__ u32 ;
struct v4l2_mbus_framefmt {scalar_t__ code; scalar_t__ field; scalar_t__ height; scalar_t__ width; } ;
struct imx_media_pixfmt {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CS_SEL_ANY ; 
 int /*<<< orphan*/  CS_SEL_YUV ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct imx_media_pixfmt* FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct imx_media_pixfmt* FUNC2 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_mbus_framefmt*,struct imx_media_pixfmt const*) ; 

int FUNC4(struct v4l2_mbus_framefmt *mbus,
			    u32 width, u32 height, u32 code, u32 field,
			    const struct imx_media_pixfmt **cc)
{
	const struct imx_media_pixfmt *lcc;

	mbus->width = width;
	mbus->height = height;
	mbus->field = field;
	if (code == 0)
		FUNC0(&code, 0, CS_SEL_YUV, false);
	lcc = FUNC2(code, CS_SEL_ANY, false);
	if (!lcc) {
		lcc = FUNC1(code, CS_SEL_ANY);
		if (!lcc)
			return -EINVAL;
	}

	mbus->code = code;
	FUNC3(mbus, lcc);
	if (cc)
		*cc = lcc;

	return 0;
}