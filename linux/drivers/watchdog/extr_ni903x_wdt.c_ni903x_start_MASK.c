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
typedef  int u8 ;
struct ni903x_wdt {scalar_t__ io_base; } ;

/* Variables and functions */
 scalar_t__ NIWD_CONTROL ; 
 int NIWD_CONTROL_PET ; 
 int NIWD_CONTROL_RESET ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct ni903x_wdt *wdt)
{
	u8 control = FUNC0(wdt->io_base + NIWD_CONTROL);

	FUNC1(control | NIWD_CONTROL_RESET, wdt->io_base + NIWD_CONTROL);
	FUNC1(control | NIWD_CONTROL_PET, wdt->io_base + NIWD_CONTROL);
}