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
struct usb_set_sel_req {int /*<<< orphan*/  u2_pel; int /*<<< orphan*/  u2_sel; int /*<<< orphan*/  u1_pel; int /*<<< orphan*/  u1_sel; } ;
struct usb_request {int /*<<< orphan*/  buf; } ;
struct usb_ep {int dummy; } ;
struct mtu3_request {struct mtu3* mtu; } ;
struct mtu3 {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  sel ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_set_sel_req*,int /*<<< orphan*/ ,int) ; 
 struct mtu3_request* FUNC2 (struct usb_request*) ; 

__attribute__((used)) static void FUNC3(struct usb_ep *ep, struct usb_request *req)
{
	struct mtu3_request *mreq;
	struct mtu3 *mtu;
	struct usb_set_sel_req sel;

	FUNC1(&sel, req->buf, sizeof(sel));

	mreq = FUNC2(req);
	mtu = mreq->mtu;
	FUNC0(mtu->dev, "u1sel:%d, u1pel:%d, u2sel:%d, u2pel:%d\n",
		sel.u1_sel, sel.u1_pel, sel.u2_sel, sel.u2_pel);
}