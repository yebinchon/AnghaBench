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
struct backlight_device {int dummy; } ;
struct appledisplay {int* msgdata; int /*<<< orphan*/  sysfslock; int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACD_USB_BRIGHTNESS ; 
 int /*<<< orphan*/  ACD_USB_TIMEOUT ; 
 int USB_DIR_IN ; 
 int USB_RECIP_INTERFACE ; 
 int /*<<< orphan*/  USB_REQ_GET_REPORT ; 
 int USB_TYPE_CLASS ; 
 struct appledisplay* FUNC0 (struct backlight_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct backlight_device *bd)
{
	struct appledisplay *pdata = FUNC0(bd);
	int retval, brightness;

	FUNC1(&pdata->sysfslock);
	retval = FUNC3(
		pdata->udev,
		FUNC4(pdata->udev, 0),
		USB_REQ_GET_REPORT,
		USB_DIR_IN | USB_TYPE_CLASS | USB_RECIP_INTERFACE,
		ACD_USB_BRIGHTNESS,
		0,
		pdata->msgdata, 2,
		ACD_USB_TIMEOUT);
	brightness = pdata->msgdata[1];
	FUNC2(&pdata->sysfslock);

	if (retval < 0)
		return retval;
	else
		return brightness;
}