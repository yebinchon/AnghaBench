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

/* Variables and functions */
 int /*<<< orphan*/  CFIFOSEL ; 
 int CSSTS ; 
 int EBUSY ; 
 int PID_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct usbhs_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct usbhs_pipe*) ; 
 struct usbhs_priv* FUNC3 (struct usbhs_pipe*) ; 
 int /*<<< orphan*/  FUNC4 (struct usbhs_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct usbhs_pipe*) ; 

__attribute__((used)) static int FUNC6(struct usbhs_pipe *pipe)
{
	struct usbhs_priv *priv = FUNC3(pipe);
	int timeout = 1024;
	u16 mask = FUNC1(priv) ? (CSSTS | PID_MASK) : PID_MASK;

	/*
	 * make sure....
	 *
	 * Modify these bits when CSSTS = 0, PID = NAK, and no pipe number is
	 * specified by the CURPIPE bits.
	 * When changing the setting of this bit after changing
	 * the PID bits for the selected pipe from BUF to NAK,
	 * check that CSSTS = 0 and PBUSY = 0.
	 */

	/*
	 * CURPIPE bit = 0
	 *
	 * see also
	 *  "Operation"
	 *  - "Pipe Control"
	 *   - "Pipe Control Registers Switching Procedure"
	 */
	FUNC4(priv, CFIFOSEL, 0);
	FUNC2(pipe);

	do {
		if (!(FUNC5(pipe) & mask))
			return 0;

		FUNC0(10);

	} while (timeout--);

	return -EBUSY;
}