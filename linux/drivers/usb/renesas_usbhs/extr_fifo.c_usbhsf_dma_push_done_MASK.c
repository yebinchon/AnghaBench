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
struct usbhs_pkt {int trans; scalar_t__ actual; scalar_t__ length; TYPE_1__* handler; int /*<<< orphan*/  zero; struct usbhs_pipe* pipe; } ;
struct usbhs_pipe {int /*<<< orphan*/  fifo; } ;
struct TYPE_2__ {int (* try_run ) (struct usbhs_pkt*,int*) ;} ;

/* Variables and functions */
 int FUNC0 (struct usbhs_pkt*,int*) ; 
 TYPE_1__ usbhs_fifo_pio_push_handler ; 
 int FUNC1 (struct usbhs_pipe*) ; 
 int /*<<< orphan*/  FUNC2 (struct usbhs_pipe*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct usbhs_pipe*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct usbhs_pkt*) ; 
 int /*<<< orphan*/  FUNC5 (struct usbhs_pipe*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct usbhs_pkt *pkt, int *is_done)
{
	struct usbhs_pipe *pipe = pkt->pipe;
	int is_short = pkt->trans % FUNC1(pipe);

	pkt->actual += pkt->trans;

	if (pkt->actual < pkt->length)
		*is_done = 0;		/* there are remainder data */
	else if (is_short)
		*is_done = 1;		/* short packet */
	else
		*is_done = !pkt->zero;	/* send zero packet? */

	FUNC2(pipe, !*is_done);

	FUNC3(pipe, pipe->fifo);
	FUNC4(pkt);
	FUNC5(pipe, pipe->fifo);

	if (!*is_done) {
		/* change handler to PIO */
		pkt->handler = &usbhs_fifo_pio_push_handler;
		return pkt->handler->try_run(pkt, is_done);
	}

	return 0;
}