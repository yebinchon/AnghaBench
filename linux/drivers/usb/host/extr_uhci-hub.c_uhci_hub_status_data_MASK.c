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
struct usb_hcd {int dummy; } ;
struct uhci_hcd {int rh_state; int /*<<< orphan*/  lock; int /*<<< orphan*/  wait_for_hp; scalar_t__ auto_stop_time; int /*<<< orphan*/  resuming_ports; scalar_t__ dead; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usb_hcd*) ; 
 scalar_t__ HZ ; 
#define  UHCI_RH_AUTO_STOPPED 131 
#define  UHCI_RH_RUNNING 130 
#define  UHCI_RH_RUNNING_NODEVS 129 
#define  UHCI_RH_SUSPENDED 128 
 int /*<<< orphan*/  FUNC1 (struct uhci_hcd*) ; 
 int FUNC2 (struct uhci_hcd*,char*) ; 
 struct uhci_hcd* FUNC3 (struct usb_hcd*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct uhci_hcd*,int const) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct uhci_hcd*) ; 
 int /*<<< orphan*/  FUNC9 (struct uhci_hcd*) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC11 (struct uhci_hcd*) ; 

__attribute__((used)) static int FUNC12(struct usb_hcd *hcd, char *buf)
{
	struct uhci_hcd *uhci = FUNC3(hcd);
	unsigned long flags;
	int status = 0;

	FUNC4(&uhci->lock, flags);

	FUNC9(uhci);
	if (!FUNC0(hcd) || uhci->dead)
		goto done;
	FUNC8(uhci);

	status = FUNC2(uhci, buf);

	switch (uhci->rh_state) {
	    case UHCI_RH_SUSPENDED:
		/* if port change, ask to be resumed */
		if (status || uhci->resuming_ports) {
			status = 1;
			FUNC10(hcd);
		}
		break;

	    case UHCI_RH_AUTO_STOPPED:
		/* if port change, auto start */
		if (status)
			FUNC11(uhci);
		break;

	    case UHCI_RH_RUNNING:
		/* are any devices attached? */
		if (!FUNC1(uhci)) {
			uhci->rh_state = UHCI_RH_RUNNING_NODEVS;
			uhci->auto_stop_time = jiffies + HZ;
		}
		break;

	    case UHCI_RH_RUNNING_NODEVS:
		/* auto-stop if nothing connected for 1 second */
		if (FUNC1(uhci))
			uhci->rh_state = UHCI_RH_RUNNING;
		else if (FUNC7(jiffies, uhci->auto_stop_time) &&
				!uhci->wait_for_hp)
			FUNC6(uhci, UHCI_RH_AUTO_STOPPED);
		break;

	    default:
		break;
	}

done:
	FUNC5(&uhci->lock, flags);
	return status;
}