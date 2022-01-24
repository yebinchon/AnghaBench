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

/* Variables and functions */
 int BIT_GPIO12 ; 
 int /*<<< orphan*/  VX855_GPI_SCI_SMI ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(void)
{
	int x;

	/*
	 * According to HiMax, when powering the DCON up we should hold
	 * SMB_DATA high for 8 SMB_CLK cycles.  This will force the DCON
	 * state machine to reset to a (sane) initial state.  Mitch Bradley
	 * did some testing and discovered that holding for 16 SMB_CLK cycles
	 * worked a lot more reliably, so that's what we do here.
	 */
	FUNC2(1, 1);

	for (x = 0; x < 16; x++) {
		FUNC3(5);
		FUNC2(1, 0);
		FUNC3(5);
		FUNC2(1, 1);
	}
	FUNC3(5);

	/* set   PMIO_Rx52[6] to enable SCI/SMI on gpio12 */
	FUNC1(FUNC0(VX855_GPI_SCI_SMI) | BIT_GPIO12, VX855_GPI_SCI_SMI);
}