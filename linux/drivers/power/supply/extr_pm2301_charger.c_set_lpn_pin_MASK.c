#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  charger_connected; } ;
struct pm2xxx_charger {int /*<<< orphan*/  lpn_pin; TYPE_1__ ac; } ;

/* Variables and functions */
 int /*<<< orphan*/  SLEEP_MAX ; 
 int /*<<< orphan*/  SLEEP_MIN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct pm2xxx_charger *pm2)
{
	if (!pm2->ac.charger_connected && FUNC0(pm2->lpn_pin)) {
		FUNC1(pm2->lpn_pin, 1);
		FUNC2(SLEEP_MIN, SLEEP_MAX);
	}
}