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
struct initio_host {int jsint; scalar_t__ addr; } ;

/* Variables and functions */
 int HZ ; 
 int SCSI_RESET_SUCCESS ; 
 int /*<<< orphan*/  TSC_RST_BUS ; 
 int TSS_SCSIRST_INT ; 
 scalar_t__ TUL_SCtrl0 ; 
 scalar_t__ TUL_SInt ; 
 scalar_t__ TUL_SSignal ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct initio_host * host, int seconds)
{
	FUNC3(TSC_RST_BUS, host->addr + TUL_SCtrl0);

	while (!((host->jsint = FUNC1(host->addr + TUL_SInt)) & TSS_SCSIRST_INT))
		FUNC0();

	/* reset tulip chip */
	FUNC3(0, host->addr + TUL_SSignal);

	/* Stall for a while, wait for target's firmware ready,make it 2 sec ! */
	/* SONY 5200 tape drive won't work if only stall for 1 sec */
	/* FIXME: this is a very long busy wait right now */
	FUNC2(seconds * HZ);

	FUNC1(host->addr + TUL_SInt);
	return SCSI_RESET_SUCCESS;
}