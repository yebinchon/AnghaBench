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
typedef  int u32 ;
struct v4l2_pix_format {int width; int height; int bytesperline; int sizeimage; int /*<<< orphan*/  field; int /*<<< orphan*/  quantization; int /*<<< orphan*/  ycbcr_enc; int /*<<< orphan*/  xfer_func; int /*<<< orphan*/  colorspace; int /*<<< orphan*/  pixelformat; } ;
struct v4l2_mbus_framefmt {int code; int width; int height; int /*<<< orphan*/  field; int /*<<< orphan*/  quantization; int /*<<< orphan*/  ycbcr_enc; int /*<<< orphan*/  xfer_func; int /*<<< orphan*/  colorspace; } ;
struct imx_media_pixfmt {scalar_t__ cs; int bpp; scalar_t__ planar; int /*<<< orphan*/  fourcc; scalar_t__ ipufmt; } ;

/* Variables and functions */
 int /*<<< orphan*/  CS_SEL_ANY ; 
 int /*<<< orphan*/  CS_SEL_YUV ; 
 int EINVAL ; 
 scalar_t__ IPUV3_COLORSPACE_YUV ; 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct imx_media_pixfmt* FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct imx_media_pixfmt* FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int,int) ; 

int FUNC4(struct v4l2_pix_format *pix,
				  struct v4l2_mbus_framefmt *mbus,
				  const struct imx_media_pixfmt *cc)
{
	u32 width;
	u32 stride;

	if (!cc) {
		cc = FUNC1(mbus->code, CS_SEL_ANY);
		if (!cc)
			cc = FUNC2(mbus->code, CS_SEL_ANY,
							true);
		if (!cc)
			return -EINVAL;
	}

	/*
	 * TODO: the IPU currently does not support the AYUV32 format,
	 * so until it does convert to a supported YUV format.
	 */
	if (cc->ipufmt && cc->cs == IPUV3_COLORSPACE_YUV) {
		u32 code;

		FUNC0(&code, 0, CS_SEL_YUV, false);
		cc = FUNC2(code, CS_SEL_YUV, false);
	}

	/* Round up width for minimum burst size */
	width = FUNC3(mbus->width, 8);

	/* Round up stride for IDMAC line start address alignment */
	if (cc->planar)
		stride = FUNC3(width, 16);
	else
		stride = FUNC3((width * cc->bpp) >> 3, 8);

	pix->width = width;
	pix->height = mbus->height;
	pix->pixelformat = cc->fourcc;
	pix->colorspace = mbus->colorspace;
	pix->xfer_func = mbus->xfer_func;
	pix->ycbcr_enc = mbus->ycbcr_enc;
	pix->quantization = mbus->quantization;
	pix->field = mbus->field;
	pix->bytesperline = stride;
	pix->sizeimage = cc->planar ? ((stride * pix->height * cc->bpp) >> 3) :
			 stride * pix->height;

	return 0;
}