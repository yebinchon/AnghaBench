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
typedef  int u32 ;
struct urb {int /*<<< orphan*/  pipe; TYPE_1__* dev; int /*<<< orphan*/  unlinked; int /*<<< orphan*/  actual_length; } ;
struct ehci_hcd {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  devpath; } ;

/* Variables and functions */
 int ECOMM ; 
 int EINPROGRESS ; 
 int ENOSR ; 
 int EOVERFLOW ; 
 int EPIPE ; 
 int EPROTO ; 
 int EREMOTEIO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 size_t FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int QTD_STS_BABBLE ; 
 int QTD_STS_DBE ; 
 int QTD_STS_HALT ; 
 int QTD_STS_MMF ; 
 int QTD_STS_XACT ; 
 int /*<<< orphan*/  FUNC4 (struct ehci_hcd*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9 (
	struct ehci_hcd *ehci,
	struct urb *urb,
	size_t length,
	u32 token
)
{
	int	status = -EINPROGRESS;

	/* count IN/OUT bytes, not SETUP (even short packets) */
	if (FUNC5 (FUNC3 (token) != 2))
		urb->actual_length += length - FUNC2 (token);

	/* don't modify error codes */
	if (FUNC6(urb->unlinked))
		return status;

	/* force cleanup after short read; not always an error */
	if (FUNC6 (FUNC0 (token)))
		status = -EREMOTEIO;

	/* serious "can't proceed" faults reported by the hardware */
	if (token & QTD_STS_HALT) {
		if (token & QTD_STS_BABBLE) {
			/* FIXME "must" disable babbling device's port too */
			status = -EOVERFLOW;
		/* CERR nonzero + halt --> stall */
		} else if (FUNC1(token)) {
			status = -EPIPE;

		/* In theory, more than one of the following bits can be set
		 * since they are sticky and the transaction is retried.
		 * Which to test first is rather arbitrary.
		 */
		} else if (token & QTD_STS_MMF) {
			/* fs/ls interrupt xfer missed the complete-split */
			status = -EPROTO;
		} else if (token & QTD_STS_DBE) {
			status = (FUNC3 (token) == 1) /* IN ? */
				? -ENOSR  /* hc couldn't read data */
				: -ECOMM; /* hc couldn't write data */
		} else if (token & QTD_STS_XACT) {
			/* timeout, bad CRC, wrong PID, etc */
			FUNC4(ehci, "devpath %s ep%d%s 3strikes\n",
				urb->dev->devpath,
				FUNC7(urb->pipe),
				FUNC8(urb->pipe) ? "in" : "out");
			status = -EPROTO;
		} else {	/* unknown */
			status = -EPROTO;
		}
	}

	return status;
}