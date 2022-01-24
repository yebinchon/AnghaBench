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
struct renesas_usb3_request {struct usb_request req; int /*<<< orphan*/  queue; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct renesas_usb3_request* FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct usb_request *FUNC2(gfp_t gfp_flags)
{
	struct renesas_usb3_request *usb3_req;

	usb3_req = FUNC1(sizeof(struct renesas_usb3_request), gfp_flags);
	if (!usb3_req)
		return NULL;

	FUNC0(&usb3_req->queue);

	return &usb3_req->req;
}