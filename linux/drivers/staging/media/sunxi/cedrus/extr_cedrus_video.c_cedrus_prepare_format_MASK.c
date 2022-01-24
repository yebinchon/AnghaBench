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
struct v4l2_pix_format {unsigned int width; unsigned int height; unsigned int sizeimage; unsigned int bytesperline; int pixelformat; int /*<<< orphan*/  field; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,int) ; 
 int /*<<< orphan*/  CEDRUS_MAX_HEIGHT ; 
 int /*<<< orphan*/  CEDRUS_MAX_WIDTH ; 
 int /*<<< orphan*/  CEDRUS_MIN_HEIGHT ; 
 int /*<<< orphan*/  CEDRUS_MIN_WIDTH ; 
 int /*<<< orphan*/  V4L2_FIELD_NONE ; 
#define  V4L2_PIX_FMT_H264_SLICE 131 
#define  V4L2_PIX_FMT_MPEG2_SLICE 130 
#define  V4L2_PIX_FMT_NV12 129 
#define  V4L2_PIX_FMT_SUNXI_TILED_NV12 128 
 unsigned int FUNC1 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct v4l2_pix_format *pix_fmt)
{
	unsigned int width = pix_fmt->width;
	unsigned int height = pix_fmt->height;
	unsigned int sizeimage = pix_fmt->sizeimage;
	unsigned int bytesperline = pix_fmt->bytesperline;

	pix_fmt->field = V4L2_FIELD_NONE;

	/* Limit to hardware min/max. */
	width = FUNC1(width, CEDRUS_MIN_WIDTH, CEDRUS_MAX_WIDTH);
	height = FUNC1(height, CEDRUS_MIN_HEIGHT, CEDRUS_MAX_HEIGHT);

	switch (pix_fmt->pixelformat) {
	case V4L2_PIX_FMT_MPEG2_SLICE:
	case V4L2_PIX_FMT_H264_SLICE:
		/* Zero bytes per line for encoded source. */
		bytesperline = 0;

		break;

	case V4L2_PIX_FMT_SUNXI_TILED_NV12:
		/* 32-aligned stride. */
		bytesperline = FUNC0(width, 32);

		/* 32-aligned height. */
		height = FUNC0(height, 32);

		/* Luma plane size. */
		sizeimage = bytesperline * height;

		/* Chroma plane size. */
		sizeimage += bytesperline * height / 2;

		break;

	case V4L2_PIX_FMT_NV12:
		/* 16-aligned stride. */
		bytesperline = FUNC0(width, 16);

		/* 16-aligned height. */
		height = FUNC0(height, 16);

		/* Luma plane size. */
		sizeimage = bytesperline * height;

		/* Chroma plane size. */
		sizeimage += bytesperline * height / 2;

		break;
	}

	pix_fmt->width = width;
	pix_fmt->height = height;

	pix_fmt->bytesperline = bytesperline;
	pix_fmt->sizeimage = sizeimage;
}