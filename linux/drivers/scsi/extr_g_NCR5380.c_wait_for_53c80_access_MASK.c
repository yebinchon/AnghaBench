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
struct NCR5380_hostdata {scalar_t__ board; int /*<<< orphan*/  c400_ctl_status; int /*<<< orphan*/  connected; } ;

/* Variables and functions */
 scalar_t__ BOARD_DTC3181E ; 
 int CSR_53C80_REG ; 
 int /*<<< orphan*/  CSR_BASE ; 
 int /*<<< orphan*/  CSR_RESET ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct NCR5380_hostdata *hostdata)
{
	int count = 10000;

	do {
		if (hostdata->board == BOARD_DTC3181E)
			FUNC3(4); /* DTC436 chip hangs without this */
		if (FUNC0(hostdata->c400_ctl_status) & CSR_53C80_REG)
			return;
	} while (--count > 0);

	FUNC2(KERN_ERR, hostdata->connected,
	            "53c80 registers not accessible, device will be reset\n");
	FUNC1(hostdata->c400_ctl_status, CSR_RESET);
	FUNC1(hostdata->c400_ctl_status, CSR_BASE);
}