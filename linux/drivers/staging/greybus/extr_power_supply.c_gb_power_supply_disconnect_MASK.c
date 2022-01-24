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
struct gb_power_supplies {int /*<<< orphan*/  connection; } ;
struct gb_bundle {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gb_power_supplies*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct gb_power_supplies* FUNC3 (struct gb_bundle*) ; 

__attribute__((used)) static void FUNC4(struct gb_bundle *bundle)
{
	struct gb_power_supplies *supplies = FUNC3(bundle);

	FUNC2(supplies->connection);
	FUNC1(supplies->connection);

	FUNC0(supplies);
}