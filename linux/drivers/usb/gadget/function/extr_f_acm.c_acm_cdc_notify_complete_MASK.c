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
typedef  int u8 ;
struct usb_request {int /*<<< orphan*/  status; struct f_acm* context; } ;
struct usb_ep {int dummy; } ;
struct f_acm {int pending; int /*<<< orphan*/  lock; struct usb_request* notify_req; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESHUTDOWN ; 
 int /*<<< orphan*/  FUNC0 (struct f_acm*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct usb_ep *ep, struct usb_request *req)
{
	struct f_acm		*acm = req->context;
	u8			doit = false;

	/* on this call path we do NOT hold the port spinlock,
	 * which is why ACM needs its own spinlock
	 */
	FUNC1(&acm->lock);
	if (req->status != -ESHUTDOWN)
		doit = acm->pending;
	acm->notify_req = req;
	FUNC2(&acm->lock);

	if (doit)
		FUNC0(acm);
}