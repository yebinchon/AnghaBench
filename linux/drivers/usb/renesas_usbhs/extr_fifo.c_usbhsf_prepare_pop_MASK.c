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
struct usbhs_pkt {int sequence; int /*<<< orphan*/  length; struct usbhs_pipe* pipe; } ;
struct usbhs_pipe {int dummy; } ;
struct usbhs_fifo {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usbhs_pipe*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct usbhs_pipe*) ; 
 scalar_t__ FUNC2 (struct usbhs_pipe*) ; 
 scalar_t__ FUNC3 (struct usbhs_pipe*) ; 
 scalar_t__ FUNC4 (struct usbhs_pipe*) ; 
 int /*<<< orphan*/  FUNC5 (struct usbhs_pipe*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct usbhs_pipe*,int /*<<< orphan*/ ) ; 
 struct usbhs_priv* FUNC7 (struct usbhs_pipe*) ; 
 int /*<<< orphan*/  FUNC8 (struct usbhs_pipe*,struct usbhs_fifo*) ; 
 struct usbhs_fifo* FUNC9 (struct usbhs_priv*) ; 
 int /*<<< orphan*/  FUNC10 (struct usbhs_pipe*,int) ; 

__attribute__((used)) static int FUNC11(struct usbhs_pkt *pkt, int *is_done)
{
	struct usbhs_pipe *pipe = pkt->pipe;
	struct usbhs_priv *priv = FUNC7(pipe);
	struct usbhs_fifo *fifo = FUNC9(priv);

	if (FUNC2(pipe))
		return 0;

	if (FUNC4(pipe))
		return 0;

	/*
	 * pipe enable to prepare packet receive
	 */
	FUNC0(pipe, pkt->sequence);
	pkt->sequence = -1; /* -1 sequence will be ignored */

	if (FUNC3(pipe))
		FUNC8(pipe, fifo);

	FUNC6(pipe, pkt->length);
	FUNC1(pipe);
	FUNC5(pipe, 1);
	FUNC10(pipe, 1);

	return 0;
}