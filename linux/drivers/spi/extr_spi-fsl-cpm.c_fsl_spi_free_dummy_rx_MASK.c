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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * fsl_dummy_rx ; 
 int /*<<< orphan*/  fsl_dummy_rx_lock ; 
 int fsl_dummy_rx_refcnt ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(void)
{
	FUNC2(&fsl_dummy_rx_lock);

	switch (fsl_dummy_rx_refcnt) {
	case 0:
		FUNC0(1);
		break;
	case 1:
		FUNC1(fsl_dummy_rx);
		fsl_dummy_rx = NULL;
		/* fall through */
	default:
		fsl_dummy_rx_refcnt--;
		break;
	}

	FUNC3(&fsl_dummy_rx_lock);
}