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
struct watchdog_device {int dummy; } ;
struct sbsa_gwdt {scalar_t__ refresh_base; } ;

/* Variables and functions */
 scalar_t__ SBSA_GWDT_WRR ; 
 struct sbsa_gwdt* FUNC0 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct watchdog_device *wdd)
{
	struct sbsa_gwdt *gwdt = FUNC0(wdd);

	/*
	 * Writing WRR for an explicit watchdog refresh.
	 * You can write anyting (like 0).
	 */
	FUNC1(0, gwdt->refresh_base + SBSA_GWDT_WRR);

	return 0;
}