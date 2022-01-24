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
struct sdw_master_prop {scalar_t__ max_clk_freq; int num_clk_freq; scalar_t__* clk_freq; int num_clk_gears; scalar_t__* clk_gears; scalar_t__ default_frame_rate; scalar_t__ default_row; scalar_t__ default_col; scalar_t__ err_threshold; scalar_t__ dynamic_frame; int /*<<< orphan*/  clk_stop_modes; int /*<<< orphan*/  revision; } ;
struct sdw_bus {int link_id; int /*<<< orphan*/  dev; struct sdw_master_prop prop; } ;
struct fwnode_handle {int dummy; } ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SDW_CLK_STOP_MODE0 ; 
 int /*<<< orphan*/  SDW_CLK_STOP_MODE1 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 struct fwnode_handle* FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct fwnode_handle*,char*) ; 
 scalar_t__ FUNC6 (struct fwnode_handle*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct fwnode_handle*,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (struct fwnode_handle*,char*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,int) ; 

int FUNC10(struct sdw_bus *bus)
{
	struct sdw_master_prop *prop = &bus->prop;
	struct fwnode_handle *link;
	char name[32];
	int nval, i;

	FUNC3(bus->dev,
				 "mipi-sdw-sw-interface-revision",
				 &prop->revision);

	/* Find master handle */
	FUNC9(name, sizeof(name),
		 "mipi-sdw-link-%d-subproperties", bus->link_id);

	link = FUNC2(bus->dev, name);
	if (!link) {
		FUNC1(bus->dev, "Master node %s not found\n", name);
		return -EIO;
	}

	if (FUNC6(link,
				      "mipi-sdw-clock-stop-mode0-supported"))
		prop->clk_stop_modes |= FUNC0(SDW_CLK_STOP_MODE0);

	if (FUNC6(link,
				      "mipi-sdw-clock-stop-mode1-supported"))
		prop->clk_stop_modes |= FUNC0(SDW_CLK_STOP_MODE1);

	FUNC7(link,
				 "mipi-sdw-max-clock-frequency",
				 &prop->max_clk_freq);

	nval = FUNC5(link, "mipi-sdw-clock-frequencies-supported");
	if (nval > 0) {
		prop->num_clk_freq = nval;
		prop->clk_freq = FUNC4(bus->dev, prop->num_clk_freq,
					      sizeof(*prop->clk_freq),
					      GFP_KERNEL);
		if (!prop->clk_freq)
			return -ENOMEM;

		FUNC8(link,
				"mipi-sdw-clock-frequencies-supported",
				prop->clk_freq, prop->num_clk_freq);
	}

	/*
	 * Check the frequencies supported. If FW doesn't provide max
	 * freq, then populate here by checking values.
	 */
	if (!prop->max_clk_freq && prop->clk_freq) {
		prop->max_clk_freq = prop->clk_freq[0];
		for (i = 1; i < prop->num_clk_freq; i++) {
			if (prop->clk_freq[i] > prop->max_clk_freq)
				prop->max_clk_freq = prop->clk_freq[i];
		}
	}

	nval = FUNC5(link, "mipi-sdw-supported-clock-gears");
	if (nval > 0) {
		prop->num_clk_gears = nval;
		prop->clk_gears = FUNC4(bus->dev, prop->num_clk_gears,
					       sizeof(*prop->clk_gears),
					       GFP_KERNEL);
		if (!prop->clk_gears)
			return -ENOMEM;

		FUNC8(link,
					       "mipi-sdw-supported-clock-gears",
					       prop->clk_gears,
					       prop->num_clk_gears);
	}

	FUNC7(link, "mipi-sdw-default-frame-rate",
				 &prop->default_frame_rate);

	FUNC7(link, "mipi-sdw-default-frame-row-size",
				 &prop->default_row);

	FUNC7(link, "mipi-sdw-default-frame-col-size",
				 &prop->default_col);

	prop->dynamic_frame =  FUNC6(link,
			"mipi-sdw-dynamic-frame-shape");

	FUNC7(link, "mipi-sdw-command-error-threshold",
				 &prop->err_threshold);

	return 0;
}