#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct usb_device {int /*<<< orphan*/  dev; } ;
struct urb {TYPE_2__* dev; int /*<<< orphan*/  pipe; } ;
struct fotg210_qh {int clearing_tt; } ;
struct fotg210_hcd {int dummy; } ;
struct TYPE_7__ {struct usb_device* root_hub; } ;
struct TYPE_8__ {TYPE_3__ self; } ;
struct TYPE_6__ {TYPE_1__* tt; int /*<<< orphan*/  devnum; int /*<<< orphan*/  ttport; } ;
struct TYPE_5__ {struct usb_device* hub; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC1 (struct fotg210_hcd*) ; 
 scalar_t__ FUNC2 (struct urb*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct fotg210_hcd *fotg210,
		struct fotg210_qh *qh, struct urb *urb, u32 token)
{

	/* If an async split transaction gets an error or is unlinked,
	 * the TT buffer may be left in an indeterminate state.  We
	 * have to clear the TT buffer.
	 *
	 * Note: this routine is never called for Isochronous transfers.
	 */
	if (urb->dev->tt && !FUNC4(urb->pipe) && !qh->clearing_tt) {
		struct usb_device *tt = urb->dev->tt->hub;

		FUNC0(&tt->dev,
				"clear tt buffer port %d, a%d ep%d t%08x\n",
				urb->dev->ttport, urb->dev->devnum,
				FUNC3(urb->pipe), token);

		if (urb->dev->tt->hub !=
				FUNC1(fotg210)->self.root_hub) {
			if (FUNC2(urb) == 0)
				qh->clearing_tt = 1;
		}
	}
}