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
struct gb_power_supply {int /*<<< orphan*/  psy; scalar_t__ registered; int /*<<< orphan*/  work; scalar_t__ update_interval; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gb_power_supply*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct gb_power_supply *gbpsy)
{
	gbpsy->update_interval = 0;

	FUNC1(&gbpsy->work);

	if (gbpsy->registered)
		FUNC2(gbpsy->psy);

	FUNC0(gbpsy);
}