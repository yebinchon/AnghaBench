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
struct wusbhc {int /*<<< orphan*/  usb_hcd; } ;
struct whc_urb {int dummy; } ;
struct whc_qset {int dummy; } ;
struct whc {int /*<<< orphan*/  lock; struct wusbhc wusbhc; } ;
struct urb {struct whc_urb* hcpriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct whc_urb*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct urb*) ; 
 int /*<<< orphan*/  FUNC4 (struct wusbhc*,struct urb*,int) ; 

void FUNC5(struct whc *whc, struct whc_qset *qset,
			    struct urb *urb, int status)
{
	struct wusbhc *wusbhc = &whc->wusbhc;
	struct whc_urb *wurb = urb->hcpriv;

	FUNC3(&wusbhc->usb_hcd, urb);
	/* Drop the lock as urb->complete() may enqueue another urb. */
	FUNC2(&whc->lock);
	FUNC4(wusbhc, urb, status);
	FUNC1(&whc->lock);

	FUNC0(wurb);
}