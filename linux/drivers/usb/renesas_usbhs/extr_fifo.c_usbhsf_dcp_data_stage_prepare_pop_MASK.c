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
struct usbhs_priv {int dummy; } ;
struct usbhs_pkt {TYPE_1__* handler; struct usbhs_pipe* pipe; } ;
struct usbhs_pipe {int dummy; } ;
struct usbhs_fifo {int dummy; } ;
struct TYPE_2__ {int (* prepare ) (struct usbhs_pkt*,int*) ;} ;

/* Variables and functions */
 int FUNC0 (struct usbhs_pkt*,int*) ; 
 TYPE_1__ usbhs_fifo_pio_pop_handler ; 
 int /*<<< orphan*/  FUNC1 (struct usbhs_pipe*) ; 
 scalar_t__ FUNC2 (struct usbhs_pipe*) ; 
 int /*<<< orphan*/  FUNC3 (struct usbhs_pipe*) ; 
 struct usbhs_priv* FUNC4 (struct usbhs_pipe*) ; 
 int /*<<< orphan*/  FUNC5 (struct usbhs_pipe*,struct usbhs_fifo*) ; 
 int /*<<< orphan*/  FUNC6 (struct usbhs_pipe*,struct usbhs_fifo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct usbhs_pipe*,struct usbhs_fifo*) ; 
 struct usbhs_fifo* FUNC8 (struct usbhs_priv*) ; 

__attribute__((used)) static int FUNC9(struct usbhs_pkt *pkt,
					     int *is_done)
{
	struct usbhs_pipe *pipe = pkt->pipe;
	struct usbhs_priv *priv = FUNC4(pipe);
	struct usbhs_fifo *fifo = FUNC8(priv);

	if (FUNC2(pipe))
		return 0;

	/*
	 * prepare pop for DCP should
	 *  - change DCP direction,
	 *  - clear fifo
	 *  - DATA1
	 */
	FUNC1(pipe);

	FUNC3(pipe); /* DATA1 */

	FUNC6(pipe, fifo, 0);
	FUNC5(pipe, fifo);
	FUNC7(pipe, fifo);

	/*
	 * change handler to PIO pop
	 */
	pkt->handler = &usbhs_fifo_pio_pop_handler;

	return pkt->handler->prepare(pkt, is_done);
}