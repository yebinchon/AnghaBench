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
struct usb_request {int dummy; } ;
struct usb_ep {int dummy; } ;
struct ast_vhub_req {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ast_vhub_req*) ; 
 struct ast_vhub_req* FUNC1 (struct usb_request*) ; 

void FUNC2(struct usb_ep *u_ep, struct usb_request *u_req)
{
	struct ast_vhub_req *req = FUNC1(u_req);

	FUNC0(req);
}