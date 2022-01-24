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
struct pxa_ep {int fifo_size; } ;
struct TYPE_2__ {scalar_t__ actual; scalar_t__ length; } ;
struct pxa27x_request {TYPE_1__ req; } ;

/* Variables and functions */
 int /*<<< orphan*/  UDCCSR ; 
 int /*<<< orphan*/  UDCCSR0_OPC ; 
 int /*<<< orphan*/  USB_DIR_IN ; 
 int /*<<< orphan*/  FUNC0 (struct pxa_ep*,char*,int /*<<< orphan*/ ,int,char*,TYPE_1__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct pxa_ep*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct pxa_ep*) ; 
 int /*<<< orphan*/  FUNC3 (struct pxa_ep*,int,int) ; 
 int FUNC4 (struct pxa_ep*,struct pxa27x_request*) ; 
 int /*<<< orphan*/  FUNC5 (struct pxa_ep*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct pxa_ep *ep, struct pxa27x_request *req)
{
	int count, is_short, completed = 0;

	while (FUNC2(ep)) {
		count = FUNC4(ep, req);
		FUNC1(ep, UDCCSR0_OPC);
		FUNC3(ep, count, !USB_DIR_IN);

		is_short = (count < ep->fifo_size);
		FUNC0(ep, "read udccsr:%03x, count:%d bytes%s req %p %d/%d\n",
			FUNC5(ep, UDCCSR), count, is_short ? "/S" : "",
			&req->req, req->req.actual, req->req.length);

		if (is_short || req->req.actual >= req->req.length) {
			completed = 1;
			break;
		}
	}

	return completed;
}