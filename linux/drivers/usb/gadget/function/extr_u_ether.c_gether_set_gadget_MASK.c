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
struct usb_gadget {int /*<<< orphan*/  dev; } ;
struct net_device {int dummy; } ;
struct eth_dev {struct usb_gadget* gadget; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ *) ; 
 struct eth_dev* FUNC1 (struct net_device*) ; 

void FUNC2(struct net_device *net, struct usb_gadget *g)
{
	struct eth_dev *dev;

	dev = FUNC1(net);
	dev->gadget = g;
	FUNC0(net, &g->dev);
}