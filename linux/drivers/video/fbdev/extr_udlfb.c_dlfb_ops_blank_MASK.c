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
struct urb {scalar_t__ transfer_buffer; } ;
struct fb_info {int /*<<< orphan*/  var; int /*<<< orphan*/  dev; struct dlfb_data* par; } ;
struct dlfb_data {int blank_mode; } ;

/* Variables and functions */
 int FB_BLANK_POWERDOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 char* FUNC1 (char*,int) ; 
 char* FUNC2 (char*) ; 
 struct urb* FUNC3 (struct dlfb_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct dlfb_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct dlfb_data*,struct urb*,int) ; 
 char* FUNC6 (char*) ; 
 char* FUNC7 (char*) ; 

__attribute__((used)) static int FUNC8(int blank_mode, struct fb_info *info)
{
	struct dlfb_data *dlfb = info->par;
	char *bufptr;
	struct urb *urb;

	FUNC0(info->dev, "blank, mode %d --> %d\n",
		dlfb->blank_mode, blank_mode);

	if ((dlfb->blank_mode == FB_BLANK_POWERDOWN) &&
	    (blank_mode != FB_BLANK_POWERDOWN)) {

		/* returning from powerdown requires a fresh modeset */
		FUNC4(dlfb, &info->var);
	}

	urb = FUNC3(dlfb);
	if (!urb)
		return 0;

	bufptr = (char *) urb->transfer_buffer;
	bufptr = FUNC6(bufptr);
	bufptr = FUNC1(bufptr, blank_mode);
	bufptr = FUNC7(bufptr);

	/* seems like a render op is needed to have blank change take effect */
	bufptr = FUNC2(bufptr);

	FUNC5(dlfb, urb, bufptr -
			(char *) urb->transfer_buffer);

	dlfb->blank_mode = blank_mode;

	return 0;
}