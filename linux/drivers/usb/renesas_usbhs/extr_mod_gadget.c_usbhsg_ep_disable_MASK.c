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
struct usbhsg_uep {int /*<<< orphan*/  lock; TYPE_1__* pipe; } ;
struct usbhs_pipe {int dummy; } ;
struct usb_ep {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * mod_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct usbhs_pipe*) ; 
 struct usbhsg_uep* FUNC3 (struct usb_ep*) ; 
 int /*<<< orphan*/  FUNC4 (struct usbhsg_uep*) ; 
 struct usbhs_pipe* FUNC5 (struct usbhsg_uep*) ; 

__attribute__((used)) static int FUNC6(struct usb_ep *ep)
{
	struct usbhsg_uep *uep = FUNC3(ep);
	struct usbhs_pipe *pipe;
	unsigned long flags;

	FUNC0(&uep->lock, flags);
	pipe = FUNC5(uep);
	if (!pipe)
		goto out;

	FUNC4(uep);
	FUNC2(pipe);

	uep->pipe->mod_private	= NULL;
	uep->pipe		= NULL;

out:
	FUNC1(&uep->lock, flags);

	return 0;
}