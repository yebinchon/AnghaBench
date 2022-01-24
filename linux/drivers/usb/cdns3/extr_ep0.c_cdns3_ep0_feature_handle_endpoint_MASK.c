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
typedef  size_t u8 ;
struct usb_ctrlrequest {int wIndex; int /*<<< orphan*/  wValue; } ;
struct cdns3_endpoint {int flags; } ;
struct cdns3_device {struct cdns3_endpoint** eps; } ;

/* Variables and functions */
 int EINVAL ; 
 int EP_WEDGE ; 
 int USB_DIR_IN ; 
 scalar_t__ USB_ENDPOINT_HALT ; 
 int FUNC0 (struct cdns3_endpoint*) ; 
 int /*<<< orphan*/  FUNC1 (struct cdns3_endpoint*) ; 
 size_t FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct cdns3_device*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct cdns3_device *priv_dev,
					     struct usb_ctrlrequest *ctrl,
					     int set)
{
	struct cdns3_endpoint *priv_ep;
	int ret = 0;
	u8 index;

	if (FUNC4(ctrl->wValue) != USB_ENDPOINT_HALT)
		return -EINVAL;

	if (!(ctrl->wIndex & ~USB_DIR_IN))
		return 0;

	index = FUNC2(ctrl->wIndex);
	priv_ep = priv_dev->eps[index];

	FUNC3(priv_dev, ctrl->wIndex);

	if (set)
		FUNC1(priv_ep);
	else if (!(priv_ep->flags & EP_WEDGE))
		ret = FUNC0(priv_ep);

	FUNC3(priv_dev, 0x00);

	return ret;
}