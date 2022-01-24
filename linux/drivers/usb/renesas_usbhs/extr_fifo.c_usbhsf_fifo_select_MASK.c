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
struct usbhs_fifo {int /*<<< orphan*/  sel; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int EIO ; 
 int MBW_32 ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct usbhs_pipe*,int) ; 
 scalar_t__ FUNC3 (struct usbhs_priv*) ; 
 scalar_t__ FUNC4 (struct usbhs_pipe*) ; 
 scalar_t__ FUNC5 (struct usbhs_pipe*) ; 
 int FUNC6 (struct usbhs_pipe*) ; 
 int /*<<< orphan*/  FUNC7 (struct usbhs_pipe*,struct usbhs_fifo*) ; 
 struct usbhs_priv* FUNC8 (struct usbhs_pipe*) ; 
 struct device* FUNC9 (struct usbhs_priv*) ; 
 int FUNC10 (struct usbhs_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct usbhs_priv*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC12 (struct usbhs_fifo*) ; 

__attribute__((used)) static int FUNC13(struct usbhs_pipe *pipe,
			      struct usbhs_fifo *fifo,
			      int write)
{
	struct usbhs_priv *priv = FUNC8(pipe);
	struct device *dev = FUNC9(priv);
	int timeout = 1024;
	u16 mask = ((1 << 5) | 0xF);		/* mask of ISEL | CURPIPE */
	u16 base = FUNC6(pipe);	/* CURPIPE */

	if (FUNC4(pipe) ||
	    FUNC12(fifo))
		return -EBUSY;

	if (FUNC5(pipe)) {
		base |= (1 == write) << 5;	/* ISEL */

		if (FUNC3(priv))
			FUNC2(pipe, write);
	}

	/* "base" will be used below  */
	FUNC11(priv, fifo->sel, base | MBW_32);

	/* check ISEL and CURPIPE value */
	while (timeout--) {
		if (base == (mask & FUNC10(priv, fifo->sel))) {
			FUNC7(pipe, fifo);
			return 0;
		}
		FUNC1(10);
	}

	FUNC0(dev, "fifo select error\n");

	return -EIO;
}