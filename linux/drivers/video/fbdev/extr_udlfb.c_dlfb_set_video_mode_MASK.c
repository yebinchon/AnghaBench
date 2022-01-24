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
struct urb {scalar_t__ transfer_buffer; } ;
struct fb_var_screeninfo {int dummy; } ;
struct dlfb_data {int /*<<< orphan*/  blank_mode; TYPE_2__* info; int /*<<< orphan*/  usb_active; } ;
struct TYPE_3__ {int /*<<< orphan*/  smem_len; } ;
struct TYPE_4__ {TYPE_1__ fix; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EPERM ; 
 int /*<<< orphan*/  FB_BLANK_UNBLANK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (char*,int /*<<< orphan*/ ) ; 
 struct urb* FUNC2 (struct dlfb_data*) ; 
 char* FUNC3 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC4 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC5 (char*,int) ; 
 char* FUNC6 (char*,struct fb_var_screeninfo*) ; 
 int FUNC7 (struct dlfb_data*,struct urb*,int) ; 
 char* FUNC8 (char*) ; 
 char* FUNC9 (char*) ; 

__attribute__((used)) static int FUNC10(struct dlfb_data *dlfb,
				struct fb_var_screeninfo *var)
{
	char *buf;
	char *wrptr;
	int retval;
	int writesize;
	struct urb *urb;

	if (!FUNC0(&dlfb->usb_active))
		return -EPERM;

	urb = FUNC2(dlfb);
	if (!urb)
		return -ENOMEM;

	buf = (char *) urb->transfer_buffer;

	/*
	* This first section has to do with setting the base address on the
	* controller * associated with the display. There are 2 base
	* pointers, currently, we only * use the 16 bpp segment.
	*/
	wrptr = FUNC8(buf);
	wrptr = FUNC5(wrptr, 0x00);
	/* set base for 16bpp segment to 0 */
	wrptr = FUNC3(wrptr, 0);
	/* set base for 8bpp segment to end of fb */
	wrptr = FUNC4(wrptr, dlfb->info->fix.smem_len);

	wrptr = FUNC6(wrptr, var);
	wrptr = FUNC1(wrptr, FB_BLANK_UNBLANK);
	wrptr = FUNC9(wrptr);

	writesize = wrptr - buf;

	retval = FUNC7(dlfb, urb, writesize);

	dlfb->blank_mode = FB_BLANK_UNBLANK;

	return retval;
}