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
struct ssb_bus {int /*<<< orphan*/  chipco; } ;

/* Variables and functions */
 int SSB_GPIO_PLL ; 
 int SSB_GPIO_XTAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ssb_bus*,int,int /*<<< orphan*/ ) ; 

int FUNC2(struct ssb_bus *bus)
{
	FUNC0(&bus->chipco);
	FUNC1(bus, SSB_GPIO_XTAL | SSB_GPIO_PLL, 0);

	return 0;
}