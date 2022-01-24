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
typedef  size_t u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct vrfb {size_t context; int xres; int yres; int xoffset; int yoffset; unsigned int bytespp; int yuv_mode; } ;
struct TYPE_2__ {unsigned long physical_ba; int size; int control; } ;

/* Variables and functions */
 unsigned int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,...) ; 
 int SMS_IMAGEHEIGHT_OFFSET ; 
 int SMS_IMAGEWIDTH_OFFSET ; 
 int SMS_PH_OFFSET ; 
 unsigned int SMS_PS_OFFSET ; 
 int SMS_PW_OFFSET ; 
 int /*<<< orphan*/  VRFB_PAGE_HEIGHT ; 
 int VRFB_PAGE_HEIGHT_EXP ; 
 int /*<<< orphan*/  VRFB_PAGE_WIDTH ; 
 int VRFB_PAGE_WIDTH_EXP ; 
 TYPE_1__* ctxs ; 
 int /*<<< orphan*/  FUNC3 (int,size_t) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int,size_t) ; 

void FUNC6(struct vrfb *vrfb, unsigned long paddr,
		u16 width, u16 height,
		unsigned bytespp, bool yuv_mode)
{
	unsigned pixel_size_exp;
	u16 vrfb_width;
	u16 vrfb_height;
	u8 ctx = vrfb->context;
	u32 size;
	u32 control;

	FUNC2("omapfb_set_vrfb(%d, %lx, %dx%d, %d, %d)\n", ctx, paddr,
			width, height, bytespp, yuv_mode);

	/* For YUV2 and UYVY modes VRFB needs to handle pixels a bit
	 * differently. See TRM. */
	if (yuv_mode) {
		bytespp *= 2;
		width /= 2;
	}

	if (bytespp == 4)
		pixel_size_exp = 2;
	else if (bytespp == 2)
		pixel_size_exp = 1;
	else {
		FUNC1();
		return;
	}

	vrfb_width = FUNC0(width * bytespp, VRFB_PAGE_WIDTH) / bytespp;
	vrfb_height = FUNC0(height, VRFB_PAGE_HEIGHT);

	FUNC2("vrfb w %u, h %u bytespp %d\n", vrfb_width, vrfb_height, bytespp);

	size  = vrfb_width << SMS_IMAGEWIDTH_OFFSET;
	size |= vrfb_height << SMS_IMAGEHEIGHT_OFFSET;

	control  = pixel_size_exp << SMS_PS_OFFSET;
	control |= VRFB_PAGE_WIDTH_EXP  << SMS_PW_OFFSET;
	control |= VRFB_PAGE_HEIGHT_EXP << SMS_PH_OFFSET;

	ctxs[ctx].physical_ba = paddr;
	ctxs[ctx].size = size;
	ctxs[ctx].control = control;

	FUNC4(paddr, ctx);
	FUNC5(size, ctx);
	FUNC3(control, ctx);

	FUNC2("vrfb offset pixels %d, %d\n",
			vrfb_width - width, vrfb_height - height);

	vrfb->xres = width;
	vrfb->yres = height;
	vrfb->xoffset = vrfb_width - width;
	vrfb->yoffset = vrfb_height - height;
	vrfb->bytespp = bytespp;
	vrfb->yuv_mode = yuv_mode;
}