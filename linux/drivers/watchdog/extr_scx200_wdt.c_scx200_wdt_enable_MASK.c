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
 scalar_t__ SCx200_WDT_WDCNFG ; 
 scalar_t__ SCx200_WDT_WDSTS ; 
 int /*<<< orphan*/  SCx200_WDT_WDSTS_WDOVF ; 
 scalar_t__ SCx200_WDT_WDTO ; 
 int /*<<< orphan*/  W_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ scx200_cb_base ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  scx_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wdto_restart ; 

__attribute__((used)) static void FUNC6(void)
{
	FUNC2("enabling watchdog timer, wdto_restart = %d\n", wdto_restart);

	FUNC4(&scx_lock);
	FUNC1(0, scx200_cb_base + SCx200_WDT_WDTO);
	FUNC0(SCx200_WDT_WDSTS_WDOVF, scx200_cb_base + SCx200_WDT_WDSTS);
	FUNC1(W_ENABLE, scx200_cb_base + SCx200_WDT_WDCNFG);
	FUNC5(&scx_lock);

	FUNC3();
}