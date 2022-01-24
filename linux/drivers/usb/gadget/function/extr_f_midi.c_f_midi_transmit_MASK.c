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
struct usb_ep {int /*<<< orphan*/  enabled; } ;
struct f_midi {int /*<<< orphan*/  transmit_lock; struct usb_ep* in_ep; } ;

/* Variables and functions */
 int FUNC0 (struct f_midi*,struct usb_ep*) ; 
 int /*<<< orphan*/  FUNC1 (struct f_midi*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct f_midi *midi)
{
	struct usb_ep *ep = midi->in_ep;
	int ret;
	unsigned long flags;

	/* We only care about USB requests if IN endpoint is enabled */
	if (!ep || !ep->enabled)
		goto drop_out;

	FUNC2(&midi->transmit_lock, flags);

	do {
		ret = FUNC0(midi, ep);
		if (ret < 0) {
			FUNC3(&midi->transmit_lock, flags);
			goto drop_out;
		}
	} while (ret);

	FUNC3(&midi->transmit_lock, flags);

	return;

drop_out:
	FUNC1(midi);
}