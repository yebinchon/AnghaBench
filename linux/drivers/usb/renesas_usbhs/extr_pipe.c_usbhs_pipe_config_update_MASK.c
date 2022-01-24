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
struct usbhs_pipe {int maxp; } ;
struct renesas_usbhs_driver_pipe_config {scalar_t__ double_buf; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int DBLB ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct usbhs_pipe*) ; 
 int FUNC2 (struct usbhs_pipe*) ; 
 struct usbhs_priv* FUNC3 (struct usbhs_pipe*) ; 
 struct device* FUNC4 (struct usbhs_priv*) ; 
 struct renesas_usbhs_driver_pipe_config* FUNC5 (struct usbhs_priv*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct usbhs_pipe*) ; 
 int /*<<< orphan*/  FUNC7 (struct usbhs_pipe*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct usbhs_pipe*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct usbhs_pipe*) ; 

void FUNC10(struct usbhs_pipe *pipe, u16 devsel,
			      u16 epnum, u16 maxp)
{
	struct usbhs_priv *priv = FUNC3(pipe);
	int pipe_num = FUNC2(pipe);
	struct renesas_usbhs_driver_pipe_config *pipe_config =
					FUNC5(priv, pipe_num);
	u16 dblb = pipe_config->double_buf ? DBLB : 0;

	if (devsel > 0xA) {
		struct device *dev = FUNC4(priv);

		FUNC0(dev, "devsel error %d\n", devsel);

		devsel = 0;
	}

	FUNC6(pipe);

	pipe->maxp = maxp;

	FUNC9(pipe);
	FUNC8(pipe, 0xFFFF,
			     (devsel << 12) |
			     maxp);

	if (!FUNC1(pipe))
		FUNC7(pipe,  0x000F | DBLB, epnum | dblb);
}