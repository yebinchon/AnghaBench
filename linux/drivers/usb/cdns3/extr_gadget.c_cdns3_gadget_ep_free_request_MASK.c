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
struct usb_request {int dummy; } ;
struct usb_ep {int dummy; } ;
struct cdns3_request {TYPE_1__* aligned_buf; } ;
struct TYPE_2__ {scalar_t__ in_use; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cdns3_request*) ; 
 struct cdns3_request* FUNC1 (struct usb_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct cdns3_request*) ; 

void FUNC3(struct usb_ep *ep,
				  struct usb_request *request)
{
	struct cdns3_request *priv_req = FUNC1(request);

	if (priv_req->aligned_buf)
		priv_req->aligned_buf->in_use = 0;

	FUNC2(priv_req);
	FUNC0(priv_req);
}