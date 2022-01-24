#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ length; scalar_t__ actual; scalar_t__ zero; } ;
struct pxa25x_request {TYPE_2__ req; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; int /*<<< orphan*/  desc; } ;
struct pxa25x_ep {unsigned int fifo_size; int /*<<< orphan*/  queue; TYPE_1__ ep; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,unsigned int,char*,char*,scalar_t__,struct pxa25x_request*) ; 
 int /*<<< orphan*/  DBG_VERY_NOISY ; 
 int UDCCS_BI_TFS ; 
 int /*<<< orphan*/  UDCCS_BI_TPC ; 
 int /*<<< orphan*/  UDCCS_BI_TSP ; 
 int /*<<< orphan*/  FUNC1 (struct pxa25x_ep*,struct pxa25x_request*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct pxa25x_ep*) ; 
 int FUNC5 (struct pxa25x_ep*) ; 
 int /*<<< orphan*/  FUNC6 (struct pxa25x_ep*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int) ; 
 unsigned int FUNC8 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC9 (struct pxa25x_ep*,struct pxa25x_request*,unsigned int) ; 

__attribute__((used)) static int
FUNC10 (struct pxa25x_ep *ep, struct pxa25x_request *req)
{
	unsigned		max;

	max = FUNC8(ep->ep.desc);
	do {
		unsigned	count;
		int		is_last, is_short;

		count = FUNC9(ep, req, max);

		/* last packet is usually short (or a zlp) */
		if (FUNC7 (count != max))
			is_last = is_short = 1;
		else {
			if (FUNC2(req->req.length != req->req.actual)
					|| req->req.zero)
				is_last = 0;
			else
				is_last = 1;
			/* interrupt/iso maxpacket may not fill the fifo */
			is_short = FUNC7 (max < ep->fifo_size);
		}

		FUNC0(DBG_VERY_NOISY, "wrote %s %d bytes%s%s %d left %p\n",
			ep->ep.name, count,
			is_last ? "/L" : "", is_short ? "/S" : "",
			req->req.length - req->req.actual, req);

		/* let loose that packet. maybe try writing another one,
		 * double buffering might work.  TSP, TPC, and TFS
		 * bit values are the same for all normal IN endpoints.
		 */
		FUNC6(ep, UDCCS_BI_TPC);
		if (is_short)
			FUNC6(ep, UDCCS_BI_TSP);

		/* requests complete when all IN data is in the FIFO */
		if (is_last) {
			FUNC1 (ep, req, 0);
			if (FUNC3(&ep->queue))
				FUNC4(ep);
			return 1;
		}

		// TODO experiment: how robust can fifo mode tweaking be?
		// double buffering is off in the default fifo mode, which
		// prevents TFS from being set here.

	} while (FUNC5(ep) & UDCCS_BI_TFS);
	return 0;
}