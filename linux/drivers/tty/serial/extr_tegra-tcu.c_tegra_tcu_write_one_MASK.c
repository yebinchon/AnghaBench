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
typedef  scalar_t__ u32 ;
struct tegra_tcu {int /*<<< orphan*/  tx; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static void FUNC3(struct tegra_tcu *tcu, u32 value,
				unsigned int count)
{
	void *msg;

	value |= FUNC0(count);
	msg = (void *)(unsigned long)value;
	FUNC2(tcu->tx, msg);
	FUNC1(tcu->tx, 1000);
}