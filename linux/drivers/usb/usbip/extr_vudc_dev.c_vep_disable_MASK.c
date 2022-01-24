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
struct vudc {int /*<<< orphan*/  lock; } ;
struct vep {int /*<<< orphan*/ * desc; } ;
struct TYPE_2__ {scalar_t__ type_control; } ;
struct usb_ep {TYPE_1__ caps; } ;

/* Variables and functions */
 int EINVAL ; 
 struct vudc* FUNC0 (struct vep*) ; 
 int /*<<< orphan*/  FUNC1 (struct vudc*,struct vep*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct vep* FUNC4 (struct usb_ep*) ; 

__attribute__((used)) static int FUNC5(struct usb_ep *_ep)
{
	struct vep *ep;
	struct vudc *udc;
	unsigned long flags;

	ep = FUNC4(_ep);
	udc = FUNC0(ep);
	if (!_ep || !ep->desc || _ep->caps.type_control)
		return -EINVAL;

	FUNC2(&udc->lock, flags);
	ep->desc = NULL;
	FUNC1(udc, ep);
	FUNC3(&udc->lock, flags);

	return 0;
}