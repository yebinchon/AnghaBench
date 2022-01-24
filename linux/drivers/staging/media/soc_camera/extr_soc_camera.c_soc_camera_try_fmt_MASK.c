#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct v4l2_pix_format {scalar_t__ pixelformat; void* sizeimage; int /*<<< orphan*/  height; void* bytesperline; int /*<<< orphan*/  width; } ;
struct TYPE_3__ {struct v4l2_pix_format pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct soc_camera_host {int capabilities; TYPE_2__* ops; } ;
struct soc_camera_format_xlate {int /*<<< orphan*/  host_fmt; } ;
struct soc_camera_device {int /*<<< orphan*/  pdev; int /*<<< orphan*/  parent; } ;
struct TYPE_4__ {int (* try_fmt ) (struct soc_camera_device*,struct v4l2_format*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int SOCAM_HOST_CAP_STRIDE ; 
 scalar_t__ V4L2_PIX_FMT_JPEG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 struct soc_camera_format_xlate* FUNC3 (struct soc_camera_device*,scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct soc_camera_device*,struct v4l2_format*) ; 
 struct soc_camera_host* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  u32 ; 

__attribute__((used)) static int FUNC8(struct soc_camera_device *icd,
			      struct v4l2_format *f)
{
	struct soc_camera_host *ici = FUNC7(icd->parent);
	const struct soc_camera_format_xlate *xlate;
	struct v4l2_pix_format *pix = &f->fmt.pix;
	int ret;

	FUNC0(icd->pdev, "TRY_FMT(%c%c%c%c, %ux%u)\n",
		FUNC2(pix->pixelformat), pix->width, pix->height);

	if (pix->pixelformat != V4L2_PIX_FMT_JPEG &&
	    !(ici->capabilities & SOCAM_HOST_CAP_STRIDE)) {
		pix->bytesperline = 0;
		pix->sizeimage = 0;
	}

	ret = ici->ops->try_fmt(icd, f);
	if (ret < 0)
		return ret;

	xlate = FUNC3(icd, pix->pixelformat);
	if (!xlate)
		return -EINVAL;

	ret = FUNC4(pix->width, xlate->host_fmt);
	if (ret < 0)
		return ret;

	pix->bytesperline = FUNC1(u32, pix->bytesperline, ret);

	ret = FUNC5(xlate->host_fmt, pix->bytesperline,
				  pix->height);
	if (ret < 0)
		return ret;

	pix->sizeimage = FUNC1(u32, pix->sizeimage, ret);

	return 0;
}