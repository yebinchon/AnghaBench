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
typedef  int u32 ;
struct usb_hcd {int /*<<< orphan*/  regs; int /*<<< orphan*/  state; } ;
struct isp1760_hcd {int /*<<< orphan*/  lock; int /*<<< orphan*/  reset_done; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HC_PORTSC1 ; 
 int PORT_CSC ; 
 int PORT_OWNER ; 
 int PORT_RESUME ; 
 int STS_PCD ; 
 struct isp1760_hcd* FUNC1 (struct usb_hcd*) ; 
 int /*<<< orphan*/  jiffies ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct usb_hcd *hcd, char *buf)
{
	struct isp1760_hcd *priv = FUNC1(hcd);
	u32 temp, status = 0;
	u32 mask;
	int retval = 1;
	unsigned long flags;

	/* if !PM, root hub timers won't get shut down ... */
	if (!FUNC0(hcd->state))
		return 0;

	/* init status to no-changes */
	buf[0] = 0;
	mask = PORT_CSC;

	FUNC4(&priv->lock, flags);
	temp = FUNC2(hcd->regs, HC_PORTSC1);

	if (temp & PORT_OWNER) {
		if (temp & PORT_CSC) {
			temp &= ~PORT_CSC;
			FUNC3(hcd->regs, HC_PORTSC1, temp);
			goto done;
		}
	}

	/*
	 * Return status information even for ports with OWNER set.
	 * Otherwise hub_wq wouldn't see the disconnect event when a
	 * high-speed device is switched over to the companion
	 * controller by the user.
	 */

	if ((temp & mask) != 0
			|| ((temp & PORT_RESUME) != 0
				&& FUNC6(jiffies,
					priv->reset_done))) {
		buf [0] |= 1 << (0 + 1);
		status = STS_PCD;
	}
	/* FIXME autosuspend idle root hubs */
done:
	FUNC5(&priv->lock, flags);
	return status ? retval : 0;
}