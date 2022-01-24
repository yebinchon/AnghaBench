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
struct uhci_hcd {unsigned int rh_numports; scalar_t__ ports_timeout; int /*<<< orphan*/  resuming_ports; scalar_t__ wait_for_hp; } ;
struct TYPE_2__ {int /*<<< orphan*/  rh_timer; int /*<<< orphan*/  self; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int USBPORTSC1 ; 
 int USBPORTSC_CSC ; 
 int /*<<< orphan*/  USBPORTSC_PE ; 
 int USBPORTSC_PEC ; 
 int USBPORTSC_PR ; 
 int USBPORTSC_RD ; 
 int /*<<< orphan*/  USB_RESUME_TIMEOUT ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct uhci_hcd*,unsigned int,unsigned long) ; 
 int FUNC9 (struct uhci_hcd*,unsigned long) ; 
 TYPE_1__* FUNC10 (struct uhci_hcd*) ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (struct uhci_hcd*,unsigned long) ; 

__attribute__((used)) static void FUNC14(struct uhci_hcd *uhci)
{
	unsigned int port;
	unsigned long port_addr;
	int status;

	for (port = 0; port < uhci->rh_numports; ++port) {
		port_addr = USBPORTSC1 + 2 * port;
		status = FUNC9(uhci, port_addr);
		if (FUNC11(status & USBPORTSC_PR)) {
			if (FUNC6(jiffies, uhci->ports_timeout)) {
				FUNC0(USBPORTSC_PR);
				FUNC7(10);

				/* HP's server management chip requires
				 * a longer delay. */
				if (uhci->wait_for_hp)
					FUNC13(uhci, port_addr);

				/* If the port was enabled before, turning
				 * reset on caused a port enable change.
				 * Turning reset off causes a port connect
				 * status change.  Clear these changes. */
				FUNC0(USBPORTSC_CSC | USBPORTSC_PEC);
				FUNC1(USBPORTSC_PE);
			}
		}
		if (FUNC11(status & USBPORTSC_RD)) {
			if (!FUNC5(port, &uhci->resuming_ports)) {

				/* Port received a wakeup request */
				FUNC4(port, &uhci->resuming_ports);
				uhci->ports_timeout = jiffies +
					FUNC3(USB_RESUME_TIMEOUT);
				FUNC12(
						&FUNC10(uhci)->self, port);

				/* Make sure we see the port again
				 * after the resuming period is over. */
				FUNC2(&FUNC10(uhci)->rh_timer,
						uhci->ports_timeout);
			} else if (FUNC6(jiffies,
						uhci->ports_timeout)) {
				FUNC8(uhci, port, port_addr);
			}
		}
	}
}