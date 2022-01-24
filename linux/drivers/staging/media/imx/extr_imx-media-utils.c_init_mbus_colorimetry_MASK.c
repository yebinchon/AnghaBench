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
struct v4l2_mbus_framefmt {int /*<<< orphan*/  ycbcr_enc; int /*<<< orphan*/  colorspace; int /*<<< orphan*/  quantization; int /*<<< orphan*/  xfer_func; } ;
struct imx_media_pixfmt {scalar_t__ cs; } ;

/* Variables and functions */
 scalar_t__ IPUV3_COLORSPACE_RGB ; 
 int /*<<< orphan*/  V4L2_COLORSPACE_SMPTE170M ; 
 int /*<<< orphan*/  V4L2_COLORSPACE_SRGB ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct v4l2_mbus_framefmt *mbus,
				  const struct imx_media_pixfmt *fmt)
{
	mbus->colorspace = (fmt->cs == IPUV3_COLORSPACE_RGB) ?
		V4L2_COLORSPACE_SRGB : V4L2_COLORSPACE_SMPTE170M;
	mbus->xfer_func = FUNC1(mbus->colorspace);
	mbus->ycbcr_enc = FUNC2(mbus->colorspace);
	mbus->quantization =
		FUNC0(fmt->cs == IPUV3_COLORSPACE_RGB,
					      mbus->colorspace,
					      mbus->ycbcr_enc);
}