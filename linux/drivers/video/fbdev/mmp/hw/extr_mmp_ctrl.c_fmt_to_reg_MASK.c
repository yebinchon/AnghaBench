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
struct mmp_overlay {int dummy; } ;

/* Variables and functions */
#define  PIXFMT_BGR1555 144 
#define  PIXFMT_BGR565 143 
#define  PIXFMT_BGR888PACK 142 
#define  PIXFMT_BGR888UNPACK 141 
#define  PIXFMT_BGRA888 140 
#define  PIXFMT_RGB1555 139 
#define  PIXFMT_RGB565 138 
#define  PIXFMT_RGB888PACK 137 
#define  PIXFMT_RGB888UNPACK 136 
#define  PIXFMT_RGBA888 135 
#define  PIXFMT_UYVY 134 
#define  PIXFMT_VYUY 133 
#define  PIXFMT_YUV420P 132 
#define  PIXFMT_YUV422P 131 
#define  PIXFMT_YUYV 130 
#define  PIXFMT_YVU420P 129 
#define  PIXFMT_YVU422P 128 
 int FUNC0 (int,int) ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int,int) ; 
 int FUNC4 (int,int) ; 
 int FUNC5 (int,int) ; 
 int FUNC6 (struct mmp_overlay*) ; 

__attribute__((used)) static u32 FUNC7(struct mmp_overlay *overlay, int pix_fmt)
{
	u32 rbswap = 0, uvswap = 0, yuvswap = 0,
		csc_en = 0, val = 0,
		vid = FUNC6(overlay);

	switch (pix_fmt) {
	case PIXFMT_RGB565:
	case PIXFMT_RGB1555:
	case PIXFMT_RGB888PACK:
	case PIXFMT_RGB888UNPACK:
	case PIXFMT_RGBA888:
		rbswap = 1;
		break;
	case PIXFMT_VYUY:
	case PIXFMT_YVU422P:
	case PIXFMT_YVU420P:
		uvswap = 1;
		break;
	case PIXFMT_YUYV:
		yuvswap = 1;
		break;
	default:
		break;
	}

	switch (pix_fmt) {
	case PIXFMT_RGB565:
	case PIXFMT_BGR565:
		break;
	case PIXFMT_RGB1555:
	case PIXFMT_BGR1555:
		val = 0x1;
		break;
	case PIXFMT_RGB888PACK:
	case PIXFMT_BGR888PACK:
		val = 0x2;
		break;
	case PIXFMT_RGB888UNPACK:
	case PIXFMT_BGR888UNPACK:
		val = 0x3;
		break;
	case PIXFMT_RGBA888:
	case PIXFMT_BGRA888:
		val = 0x4;
		break;
	case PIXFMT_UYVY:
	case PIXFMT_VYUY:
	case PIXFMT_YUYV:
		val = 0x5;
		csc_en = 1;
		break;
	case PIXFMT_YUV422P:
	case PIXFMT_YVU422P:
		val = 0x6;
		csc_en = 1;
		break;
	case PIXFMT_YUV420P:
	case PIXFMT_YVU420P:
		val = 0x7;
		csc_en = 1;
		break;
	default:
		break;
	}

	return (FUNC2(0) | FUNC1(vid, val) |
		FUNC3(vid, rbswap) | FUNC4(vid, uvswap) |
		FUNC5(vid, yuvswap) | FUNC0(vid, csc_en));
}