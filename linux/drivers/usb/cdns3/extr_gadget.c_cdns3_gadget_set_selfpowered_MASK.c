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
struct cdns3_device {int is_selfpowered; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 struct cdns3_device* FUNC0 (struct usb_gadget*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct usb_gadget *gadget,
					int is_selfpowered)
{
	struct cdns3_device *priv_dev = FUNC0(gadget);
	unsigned long flags;

	FUNC1(&priv_dev->lock, flags);
	priv_dev->is_selfpowered = !!is_selfpowered;
	FUNC2(&priv_dev->lock, flags);
	return 0;
}