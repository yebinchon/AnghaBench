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

/* Variables and functions */
 int /*<<< orphan*/  PIPESEL ; 
 int FUNC0 (struct usbhs_pipe*) ; 
 struct usbhs_priv* FUNC1 (struct usbhs_pipe*) ; 
 int /*<<< orphan*/  FUNC2 (struct usbhs_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct usbhs_pipe *pipe)
{
	struct usbhs_priv *priv = FUNC1(pipe);

	/*
	 * On pipe, this is necessary before
	 * accesses to below registers.
	 *
	 * PIPESEL	: usbhsp_pipe_select
	 * PIPECFG	: usbhsp_pipe_cfg_xxx
	 * PIPEBUF	: usbhsp_pipe_buf_xxx
	 * PIPEMAXP	: usbhsp_pipe_maxp_xxx
	 * PIPEPERI
	 */

	/*
	 * if pipe is dcp, no pipe is selected.
	 * it is no problem, because dcp have its register
	 */
	FUNC2(priv, PIPESEL, 0xF & FUNC0(pipe));
}