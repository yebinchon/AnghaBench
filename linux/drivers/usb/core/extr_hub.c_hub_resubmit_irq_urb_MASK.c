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
struct usb_hub {int /*<<< orphan*/  irq_urb_lock; int /*<<< orphan*/  irq_urb_retry; int /*<<< orphan*/  intfdev; int /*<<< orphan*/  urb; scalar_t__ quiescing; } ;

/* Variables and functions */
 int ENODEV ; 
 int EPERM ; 
 int ESHUTDOWN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct usb_hub *hub)
{
	unsigned long flags;
	int status;

	FUNC2(&hub->irq_urb_lock, flags);

	if (hub->quiescing) {
		FUNC3(&hub->irq_urb_lock, flags);
		return;
	}

	status = FUNC4(hub->urb, GFP_ATOMIC);
	if (status && status != -ENODEV && status != -EPERM &&
	    status != -ESHUTDOWN) {
		FUNC0(hub->intfdev, "resubmit --> %d\n", status);
		FUNC1(&hub->irq_urb_retry, jiffies + HZ);
	}

	FUNC3(&hub->irq_urb_lock, flags);
}