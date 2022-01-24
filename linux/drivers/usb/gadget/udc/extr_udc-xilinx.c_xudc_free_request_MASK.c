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
struct xusb_req {int dummy; } ;
struct usb_request {int dummy; } ;
struct usb_ep {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct xusb_req*) ; 
 struct xusb_req* FUNC1 (struct usb_request*) ; 

__attribute__((used)) static void FUNC2(struct usb_ep *_ep, struct usb_request *_req)
{
	struct xusb_req *req = FUNC1(_req);

	FUNC0(req);
}