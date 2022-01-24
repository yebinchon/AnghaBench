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
typedef  int /*<<< orphan*/  u8 ;
struct wusbhc {int /*<<< orphan*/  mutex; int /*<<< orphan*/  dev; } ;
struct wusb_dev {int /*<<< orphan*/  entry_ts; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wusbhc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct wusb_dev* FUNC4 (struct wusbhc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct wusbhc *wusbhc, u8 srcaddr)
{
	struct wusb_dev *wusb_dev;

	FUNC2(&wusbhc->mutex);
	wusb_dev = FUNC4(wusbhc, srcaddr);
	if (wusb_dev == NULL) {
		FUNC1(wusbhc->dev, "ignoring DN_Alive from unconnected device %02x\n",
			srcaddr);
	} else {
		wusb_dev->entry_ts = jiffies;
		FUNC0(wusbhc);
	}
	FUNC3(&wusbhc->mutex);
}