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
typedef  int u16 ;
struct usbhs_priv {int dummy; } ;
struct usbhs_pipe {int dummy; } ;
struct renesas_usbhs_driver_pipe_config {int bufsize; int bufnum; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int,int,int) ; 
 int FUNC1 (struct usbhs_pipe*) ; 
 struct usbhs_priv* FUNC2 (struct usbhs_pipe*) ; 
 struct device* FUNC3 (struct usbhs_priv*) ; 
 struct renesas_usbhs_driver_pipe_config* FUNC4 (struct usbhs_priv*,int) ; 

__attribute__((used)) static u16 FUNC5(struct usbhs_pipe *pipe)
{
	struct usbhs_priv *priv = FUNC2(pipe);
	struct device *dev = FUNC3(priv);
	int pipe_num = FUNC1(pipe);
	u16 buff_size;
	u16 bufnmb;
	u16 bufnmb_cnt;
	struct renesas_usbhs_driver_pipe_config *pipe_config =
					FUNC4(priv, pipe_num);

	/*
	 * PIPEBUF
	 *
	 * see
	 *  - "Register Descriptions" - "PIPEBUF" register
	 *  - "Features"  - "Pipe configuration"
	 *  - "Operation" - "FIFO Buffer Memory"
	 *  - "Operation" - "Pipe Control"
	 */
	buff_size = pipe_config->bufsize;
	bufnmb = pipe_config->bufnum;

	/* change buff_size to register value */
	bufnmb_cnt = (buff_size / 64) - 1;

	FUNC0(dev, "pipe : %d : buff_size 0x%x: bufnmb 0x%x\n",
		pipe_num, buff_size, bufnmb);

	return	(0x1f & bufnmb_cnt)	<< 10 |
		(0xff & bufnmb)		<<  0;
}