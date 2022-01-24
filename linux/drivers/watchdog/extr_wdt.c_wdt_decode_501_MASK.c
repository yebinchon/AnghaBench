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
 int WDC_SR_PSUOVER ; 
 int WDC_SR_PSUUNDR ; 
 int WDC_SR_TGOOD ; 
 int /*<<< orphan*/  WDT_RT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void FUNC2(int status)
{
	if (!(status & WDC_SR_TGOOD))
		FUNC1("Overheat alarm (%d)\n", FUNC0(WDT_RT));
	if (!(status & WDC_SR_PSUOVER))
		FUNC1("PSU over voltage\n");
	if (!(status & WDC_SR_PSUUNDR))
		FUNC1("PSU under voltage\n");
}