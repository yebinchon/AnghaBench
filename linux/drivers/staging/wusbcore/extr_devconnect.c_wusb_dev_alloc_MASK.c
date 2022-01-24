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
struct wusbhc {int dummy; } ;
struct wusb_dev {int /*<<< orphan*/  devconnect_acked_work; struct wusbhc* wusbhc; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct wusb_dev* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wusb_dev*) ; 
 int /*<<< orphan*/  wusbhc_devconnect_acked_work ; 

__attribute__((used)) static struct wusb_dev *FUNC3(struct wusbhc *wusbhc)
{
	struct wusb_dev *wusb_dev;

	wusb_dev = FUNC1(sizeof(*wusb_dev), GFP_KERNEL);
	if (wusb_dev == NULL)
		goto err;

	wusb_dev->wusbhc = wusbhc;

	FUNC0(&wusb_dev->devconnect_acked_work, wusbhc_devconnect_acked_work);

	return wusb_dev;
err:
	FUNC2(wusb_dev);
	return NULL;
}