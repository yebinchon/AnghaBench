#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct usb_function {int dummy; } ;
struct phonet_port {int /*<<< orphan*/ * usb; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * skb; } ;
struct f_phonet {TYPE_1__ rx; int /*<<< orphan*/  in_ep; int /*<<< orphan*/  out_ep; struct net_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct f_phonet* FUNC1 (struct usb_function*) ; 
 struct phonet_port* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct usb_function *f)
{
	struct f_phonet *fp = FUNC1(f);
	struct net_device *dev = fp->dev;
	struct phonet_port *port = FUNC2(dev);

	FUNC3(dev);
	port->usb = NULL;

	FUNC4(fp->out_ep);
	FUNC4(fp->in_ep);
	if (fp->rx.skb) {
		FUNC0(fp->rx.skb);
		fp->rx.skb = NULL;
	}
}