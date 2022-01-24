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
struct usbhs_fifo {int dummy; } ;

/* Variables and functions */
 struct usbhs_priv* FUNC0 (struct usbhs_pipe*) ; 
 int /*<<< orphan*/  FUNC1 (struct usbhs_pipe*,struct usbhs_fifo*) ; 
 scalar_t__ FUNC2 (struct usbhs_pipe*,struct usbhs_fifo*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct usbhs_pipe*,struct usbhs_fifo*) ; 
 struct usbhs_fifo* FUNC4 (struct usbhs_priv*) ; 

void FUNC5(struct usbhs_pipe *pipe)
{
	struct usbhs_priv *priv = FUNC0(pipe);
	struct usbhs_fifo *fifo = FUNC4(priv); /* CFIFO */

	/* clear DCP FIFO of transmission */
	if (FUNC2(pipe, fifo, 1) < 0)
		return;
	FUNC1(pipe, fifo);
	FUNC3(pipe, fifo);

	/* clear DCP FIFO of reception */
	if (FUNC2(pipe, fifo, 0) < 0)
		return;
	FUNC1(pipe, fifo);
	FUNC3(pipe, fifo);
}