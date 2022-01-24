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
struct usbhs_pkt {scalar_t__ actual; int trans; scalar_t__ length; struct usbhs_pipe* pipe; } ;
struct usbhs_pipe {int /*<<< orphan*/  fifo; } ;

/* Variables and functions */
 int FUNC0 (struct usbhs_pipe*) ; 
 int /*<<< orphan*/  FUNC1 (struct usbhs_pipe*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct usbhs_pipe*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct usbhs_pkt*) ; 
 int /*<<< orphan*/  FUNC4 (struct usbhs_pipe*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct usbhs_pkt*,int*) ; 

__attribute__((used)) static int FUNC6(struct usbhs_pkt *pkt, int *is_done)
{
	struct usbhs_pipe *pipe = pkt->pipe;
	int maxp = FUNC0(pipe);

	FUNC2(pipe, pipe->fifo);
	FUNC3(pkt);
	FUNC4(pipe, pipe->fifo);

	pkt->actual += pkt->trans;

	if ((pkt->actual == pkt->length) ||	/* receive all data */
	    (pkt->trans < maxp)) {		/* short packet */
		*is_done = 1;
		FUNC1(pipe, 0);
	} else {
		/* re-enable */
		FUNC1(pipe, 0);
		FUNC5(pkt, is_done);
	}

	return 0;
}