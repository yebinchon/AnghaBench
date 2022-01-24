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
struct v4l2_mbus_framefmt {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct TYPE_2__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct ipu_image {TYPE_1__ rect; int /*<<< orphan*/  pix; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct v4l2_mbus_framefmt*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ipu_image*,int /*<<< orphan*/ ,int) ; 

int FUNC2(struct ipu_image *image,
				    struct v4l2_mbus_framefmt *mbus)
{
	int ret;

	FUNC1(image, 0, sizeof(*image));

	ret = FUNC0(&image->pix, mbus, NULL);
	if (ret)
		return ret;

	image->rect.width = mbus->width;
	image->rect.height = mbus->height;

	return 0;
}