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
struct usb_ep {int /*<<< orphan*/  name; } ;
struct cdns3_endpoint {int /*<<< orphan*/  flags; struct cdns3_device* cdns3_dev; } ;
struct cdns3_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EP_WEDGE ; 
 int /*<<< orphan*/  FUNC0 (struct usb_ep*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct cdns3_endpoint* FUNC2 (struct usb_ep*) ; 

int FUNC3(struct usb_ep *ep)
{
	struct cdns3_endpoint *priv_ep = FUNC2(ep);
	struct cdns3_device *priv_dev = priv_ep->cdns3_dev;

	FUNC1(priv_dev->dev, "Wedge for %s\n", ep->name);
	FUNC0(ep, 1);
	priv_ep->flags |= EP_WEDGE;

	return 0;
}