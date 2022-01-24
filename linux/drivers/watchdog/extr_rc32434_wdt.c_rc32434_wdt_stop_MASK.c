#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  io_lock; } ;
struct TYPE_3__ {int /*<<< orphan*/  wtc; } ;

/* Variables and functions */
 int RC32434_WTC_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_2__ rc32434_wdt_device ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* wdt_reg ; 

__attribute__((used)) static void FUNC4(void)
{
	FUNC2(&rc32434_wdt_device.io_lock);

	/* Disable WDT */
	FUNC0(wdt_reg->wtc, 0, 1 << RC32434_WTC_EN);

	FUNC3(&rc32434_wdt_device.io_lock);
	FUNC1("Stopped watchdog timer\n");
}