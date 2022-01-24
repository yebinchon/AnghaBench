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
struct tegra_xusb_port {scalar_t__ index; int /*<<< orphan*/  dev; int /*<<< orphan*/  padctl; } ;
struct tegra_xusb_lane_map {scalar_t__ port; int /*<<< orphan*/  index; scalar_t__ type; } ;
struct tegra_xusb_lane {TYPE_1__* soc; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 struct tegra_xusb_lane* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct tegra_xusb_lane*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tegra_xusb_lane* FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tegra_xusb_lane*,char const*) ; 

struct tegra_xusb_lane *
FUNC5(struct tegra_xusb_port *port,
			  const struct tegra_xusb_lane_map *map,
			  const char *function)
{
	struct tegra_xusb_lane *lane, *match = FUNC0(-ENODEV);

	for (; map->type; map++) {
		if (port->index != map->port)
			continue;

		lane = FUNC3(port->padctl, map->type,
					    map->index);
		if (FUNC1(lane))
			continue;

		if (!FUNC4(lane, function))
			continue;

		if (!FUNC1(match))
			FUNC2(&port->dev, "conflicting match: %s-%u / %s\n",
				map->type, map->index, match->soc->name);
		else
			match = lane;
	}

	return match;
}