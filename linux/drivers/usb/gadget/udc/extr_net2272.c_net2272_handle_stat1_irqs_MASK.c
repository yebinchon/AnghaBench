#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_9__ {scalar_t__ speed; } ;
struct net2272 {int /*<<< orphan*/  dev; TYPE_2__ gadget; TYPE_3__* driver; int /*<<< orphan*/  lock; } ;
struct TYPE_8__ {int name; } ;
struct TYPE_10__ {int /*<<< orphan*/  (* resume ) (TYPE_2__*) ;int /*<<< orphan*/  (* suspend ) (TYPE_2__*) ;int /*<<< orphan*/  (* disconnect ) (TYPE_2__*) ;TYPE_1__ driver; } ;

/* Variables and functions */
 int CONTROL_STATUS_INTERRUPT ; 
 int /*<<< orphan*/  IRQSTAT1 ; 
 int RESUME_INTERRUPT ; 
 int ROOT_PORT_RESET_INTERRUPT ; 
 int SUSPEND_REQUEST_CHANGE_INTERRUPT ; 
 int SUSPEND_REQUEST_INTERRUPT ; 
 int /*<<< orphan*/  USBCTL1 ; 
 int USB_FULL_SPEED ; 
 int USB_HIGH_SPEED ; 
 scalar_t__ USB_SPEED_UNKNOWN ; 
 int VBUS_INTERRUPT ; 
 int VBUS_PIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  enable_suspend ; 
 int /*<<< orphan*/  FUNC1 (struct net2272*) ; 
 int FUNC2 (struct net2272*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net2272*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct net2272*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,TYPE_3__*) ; 

__attribute__((used)) static void
FUNC11(struct net2272 *dev, u8 stat)
{
	u8 tmp, mask;

	/* after disconnect there's nothing else to do! */
	tmp = (1 << VBUS_INTERRUPT) | (1 << ROOT_PORT_RESET_INTERRUPT);
	mask = (1 << USB_HIGH_SPEED) | (1 << USB_FULL_SPEED);

	if (stat & tmp) {
		bool	reset = false;
		bool	disconnect = false;

		/*
		 * Ignore disconnects and resets if the speed hasn't been set.
		 * VBUS can bounce and there's always an initial reset.
		 */
		FUNC3(dev, IRQSTAT1, tmp);
		if (dev->gadget.speed != USB_SPEED_UNKNOWN) {
			if ((stat & (1 << VBUS_INTERRUPT)) &&
					(FUNC2(dev, USBCTL1) &
						(1 << VBUS_PIN)) == 0) {
				disconnect = true;
				FUNC0(dev->dev, "disconnect %s\n",
					dev->driver->driver.name);
			} else if ((stat & (1 << ROOT_PORT_RESET_INTERRUPT)) &&
					(FUNC2(dev, USBCTL1) & mask)
						== 0) {
				reset = true;
				FUNC0(dev->dev, "reset %s\n",
					dev->driver->driver.name);
			}

			if (disconnect || reset) {
				FUNC6(dev, dev->driver);
				FUNC1(dev);
				FUNC5(&dev->lock);
				if (reset)
					FUNC10
						(&dev->gadget, dev->driver);
				else
					(dev->driver->disconnect)
						(&dev->gadget);
				FUNC4(&dev->lock);
				return;
			}
		}
		stat &= ~tmp;

		if (!stat)
			return;
	}

	tmp = (1 << SUSPEND_REQUEST_CHANGE_INTERRUPT);
	if (stat & tmp) {
		FUNC3(dev, IRQSTAT1, tmp);
		if (stat & (1 << SUSPEND_REQUEST_INTERRUPT)) {
			if (dev->driver->suspend)
				dev->driver->suspend(&dev->gadget);
			if (!enable_suspend) {
				stat &= ~(1 << SUSPEND_REQUEST_INTERRUPT);
				FUNC0(dev->dev, "Suspend disabled, ignoring\n");
			}
		} else {
			if (dev->driver->resume)
				dev->driver->resume(&dev->gadget);
		}
		stat &= ~tmp;
	}

	/* clear any other status/irqs */
	if (stat)
		FUNC3(dev, IRQSTAT1, stat);

	/* some status we can just ignore */
	stat &= ~((1 << CONTROL_STATUS_INTERRUPT)
			| (1 << SUSPEND_REQUEST_INTERRUPT)
			| (1 << RESUME_INTERRUPT));
	if (!stat)
		return;
	else
		FUNC0(dev->dev, "unhandled irqstat1 %02x\n", stat);
}