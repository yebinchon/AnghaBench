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
struct usb_gadget {int dummy; } ;
struct cdns3_device {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int FUNC0 (struct cdns3_device*) ; 
 struct cdns3_device* FUNC1 (struct usb_gadget*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct usb_gadget *gadget)
{
	struct cdns3_device *priv_dev = FUNC1(gadget);
	unsigned long flags;
	int ret = 0;

	FUNC2(&priv_dev->lock, flags);
	ret = FUNC0(priv_dev);
	FUNC3(&priv_dev->lock, flags);
	return ret;
}