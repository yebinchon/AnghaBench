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
struct usb_interface {int dummy; } ;
struct mt7601u_dev {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  MT7601U_STATE_INITIALIZED ; 
 int FUNC0 (struct mt7601u_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct mt7601u_dev* FUNC2 (struct usb_interface*) ; 

__attribute__((used)) static int FUNC3(struct usb_interface *usb_intf)
{
	struct mt7601u_dev *dev = FUNC2(usb_intf);
	int ret;

	ret = FUNC0(dev);
	if (ret)
		return ret;

	FUNC1(MT7601U_STATE_INITIALIZED, &dev->state);

	return 0;
}