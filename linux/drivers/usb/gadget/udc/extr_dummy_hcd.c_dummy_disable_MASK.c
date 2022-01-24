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
struct dummy_ep {scalar_t__ stream_en; int /*<<< orphan*/ * desc; } ;
struct dummy {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ep0name ; 
 struct dummy* FUNC1 (struct dummy_ep*) ; 
 int /*<<< orphan*/  FUNC2 (struct dummy*,struct dummy_ep*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct dummy*) ; 
 struct dummy_ep* FUNC6 (struct usb_ep*) ; 

__attribute__((used)) static int FUNC7(struct usb_ep *_ep)
{
	struct dummy_ep		*ep;
	struct dummy		*dum;
	unsigned long		flags;

	ep = FUNC6(_ep);
	if (!_ep || !ep->desc || _ep->name == ep0name)
		return -EINVAL;
	dum = FUNC1(ep);

	FUNC3(&dum->lock, flags);
	ep->desc = NULL;
	ep->stream_en = 0;
	FUNC2(dum, ep);
	FUNC4(&dum->lock, flags);

	FUNC0(FUNC5(dum), "disabled %s\n", _ep->name);
	return 0;
}