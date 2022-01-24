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
struct wusbhc {int /*<<< orphan*/  mutex; struct device* dev; } ;
struct wusb_dev {int /*<<< orphan*/  port_idx; int /*<<< orphan*/  addr; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wusbhc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct wusbhc*,int /*<<< orphan*/ ) ; 
 struct wusb_dev* FUNC6 (struct wusbhc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct wusbhc *wusbhc, u8 srcaddr)
{
	struct device *dev = wusbhc->dev;
	struct wusb_dev *wusb_dev;

	FUNC3(&wusbhc->mutex);
	wusb_dev = FUNC6(wusbhc, srcaddr);
	if (wusb_dev == NULL) {
		FUNC1(dev, "ignoring DN DISCONNECT from unconnected device %02x\n",
			srcaddr);
	} else {
		FUNC2(dev, "DN DISCONNECT: device 0x%02x going down\n",
			wusb_dev->addr);
		FUNC0(wusbhc, FUNC5(wusbhc,
			wusb_dev->port_idx));
	}
	FUNC4(&wusbhc->mutex);
}