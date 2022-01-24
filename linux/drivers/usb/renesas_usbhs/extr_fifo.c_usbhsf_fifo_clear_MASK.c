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
struct usbhs_priv {int dummy; } ;
struct usbhs_pipe {int dummy; } ;
struct usbhs_fifo {int /*<<< orphan*/  ctr; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCLR ; 
 int FUNC0 (struct usbhs_pipe*) ; 
 int /*<<< orphan*/  FUNC1 (struct usbhs_pipe*) ; 
 scalar_t__ FUNC2 (struct usbhs_pipe*) ; 
 struct usbhs_priv* FUNC3 (struct usbhs_pipe*) ; 
 int /*<<< orphan*/  FUNC4 (struct usbhs_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct usbhs_priv*,struct usbhs_fifo*) ; 

__attribute__((used)) static void FUNC6(struct usbhs_pipe *pipe,
			      struct usbhs_fifo *fifo)
{
	struct usbhs_priv *priv = FUNC3(pipe);
	int ret = 0;

	if (!FUNC1(pipe)) {
		/*
		 * This driver checks the pipe condition first to avoid -EBUSY
		 * from usbhsf_fifo_barrier() if the pipe is RX direction and
		 * empty.
		 */
		if (FUNC2(pipe))
			ret = FUNC0(pipe);
		if (!ret)
			ret = FUNC5(priv, fifo);
	}

	/*
	 * if non-DCP pipe, this driver should set BCLR when
	 * usbhsf_fifo_barrier() returns 0.
	 */
	if (!ret)
		FUNC4(priv, fifo->ctr, BCLR);
}