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
struct usb_ep {int /*<<< orphan*/  desc; } ;
struct TYPE_2__ {int stalled; int wedged; scalar_t__ is_in; scalar_t__ is_iso; } ;
struct ast_vhub_ep {scalar_t__ d_idx; TYPE_1__ epn; int /*<<< orphan*/  queue; struct ast_vhub* vhub; } ;
struct ast_vhub {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct ast_vhub_ep*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ast_vhub_ep*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct ast_vhub_ep* FUNC5 (struct usb_ep*) ; 

__attribute__((used)) static int FUNC6(struct usb_ep* u_ep, bool halt,
				      bool wedge)
{
	struct ast_vhub_ep *ep = FUNC5(u_ep);
	struct ast_vhub *vhub = ep->vhub;
	unsigned long flags;

	FUNC0(ep, "Set halt (%d) & wedge (%d)\n", halt, wedge);

	if (!u_ep || !u_ep->desc)
		return -EINVAL;
	if (ep->d_idx == 0)
		return 0;
	if (ep->epn.is_iso)
		return -EOPNOTSUPP;

	FUNC3(&vhub->lock, flags);

	/* Fail with still-busy IN endpoints */
	if (halt && ep->epn.is_in && !FUNC2(&ep->queue)) {
		FUNC4(&vhub->lock, flags);
		return -EAGAIN;
	}
	ep->epn.stalled = halt;
	ep->epn.wedged = wedge;
	FUNC1(ep);

	FUNC4(&vhub->lock, flags);

	return 0;
}