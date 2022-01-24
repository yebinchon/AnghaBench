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
struct usb_host_endpoint {struct isp1760_qh* hcpriv; } ;
struct usb_hcd {int dummy; } ;
struct isp1760_qh {scalar_t__ tt_buffer_dirty; } ;
struct isp1760_hcd {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 struct isp1760_hcd* FUNC0 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct usb_hcd *hcd,
						struct usb_host_endpoint *ep)
{
	struct isp1760_hcd *priv = FUNC0(hcd);
	struct isp1760_qh *qh = ep->hcpriv;
	unsigned long spinflags;

	if (!qh)
		return;

	FUNC2(&priv->lock, spinflags);
	qh->tt_buffer_dirty = 0;
	FUNC1(hcd);
	FUNC3(&priv->lock, spinflags);
}