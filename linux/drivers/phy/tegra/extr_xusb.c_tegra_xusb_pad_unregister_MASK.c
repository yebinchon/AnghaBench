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
struct tegra_xusb_pad {int /*<<< orphan*/  dev; int /*<<< orphan*/ * lanes; int /*<<< orphan*/  provider; TYPE_1__* soc; } ;
struct TYPE_2__ {unsigned int num_lanes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct tegra_xusb_pad *pad)
{
	unsigned int i = pad->soc->num_lanes;

	FUNC1(pad->provider);

	while (i--)
		FUNC2(pad->lanes[i]);

	FUNC0(&pad->dev);
}