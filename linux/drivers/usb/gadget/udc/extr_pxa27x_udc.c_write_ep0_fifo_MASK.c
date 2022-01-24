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
struct pxa_ep {int dummy; } ;
struct TYPE_2__ {scalar_t__ actual; scalar_t__ length; } ;
struct pxa27x_request {TYPE_1__ req; } ;

/* Variables and functions */
 unsigned int EP0_FIFO_SIZE ; 
 int /*<<< orphan*/  UDCCSR ; 
 int /*<<< orphan*/  UDCCSR0_IPR ; 
 int /*<<< orphan*/  USB_DIR_IN ; 
 int /*<<< orphan*/  FUNC0 (struct pxa_ep*,char*,unsigned int,char*,char*,scalar_t__,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pxa_ep*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pxa_ep*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pxa_ep*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 
 unsigned int FUNC5 (struct pxa_ep*,struct pxa27x_request*,unsigned int) ; 

__attribute__((used)) static int FUNC6(struct pxa_ep *ep, struct pxa27x_request *req)
{
	unsigned	count;
	int		is_last, is_short;

	count = FUNC5(ep, req, EP0_FIFO_SIZE);
	FUNC2(ep, count, USB_DIR_IN);

	is_short = (count < EP0_FIFO_SIZE);
	is_last = ((count == 0) || (count < EP0_FIFO_SIZE));

	/* Sends either a short packet or a 0 length packet */
	if (FUNC4(is_short))
		FUNC1(ep, UDCCSR0_IPR);

	FUNC0(ep, "in %d bytes%s%s, %d left, req=%p, udccsr0=0x%03x\n",
		count, is_short ? "/S" : "", is_last ? "/L" : "",
		req->req.length - req->req.actual,
		&req->req, FUNC3(ep, UDCCSR));

	return is_last;
}