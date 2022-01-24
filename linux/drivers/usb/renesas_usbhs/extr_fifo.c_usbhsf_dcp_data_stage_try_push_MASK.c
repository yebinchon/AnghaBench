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
struct usbhs_pkt {TYPE_1__* handler; struct usbhs_pipe* pipe; } ;
struct usbhs_pipe {int dummy; } ;
struct TYPE_2__ {int (* prepare ) (struct usbhs_pkt*,int*) ;} ;

/* Variables and functions */
 int FUNC0 (struct usbhs_pkt*,int*) ; 
 TYPE_1__ usbhs_fifo_pio_push_handler ; 
 int /*<<< orphan*/  FUNC1 (struct usbhs_pipe*) ; 

__attribute__((used)) static int FUNC2(struct usbhs_pkt *pkt, int *is_done)
{
	struct usbhs_pipe *pipe = pkt->pipe;

	FUNC1(pipe); /* DATA1 */

	/*
	 * change handler to PIO push
	 */
	pkt->handler = &usbhs_fifo_pio_push_handler;

	return pkt->handler->prepare(pkt, is_done);
}