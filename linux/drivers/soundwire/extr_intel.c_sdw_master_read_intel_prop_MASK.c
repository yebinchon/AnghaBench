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
typedef  int u32 ;
struct sdw_master_prop {int mclk_freq; int hw_disabled; } ;
struct sdw_bus {int link_id; int /*<<< orphan*/  dev; struct sdw_master_prop prop; } ;
struct fwnode_handle {int dummy; } ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int EIO ; 
 int SDW_INTEL_QUIRK_MASK_BUS_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 struct fwnode_handle* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct fwnode_handle*,char*,int*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int) ; 

__attribute__((used)) static int FUNC4(struct sdw_bus *bus)
{
	struct sdw_master_prop *prop = &bus->prop;
	struct fwnode_handle *link;
	char name[32];
	u32 quirk_mask;

	/* Find master handle */
	FUNC3(name, sizeof(name),
		 "mipi-sdw-link-%d-subproperties", bus->link_id);

	link = FUNC1(bus->dev, name);
	if (!link) {
		FUNC0(bus->dev, "Master node %s not found\n", name);
		return -EIO;
	}

	FUNC2(link,
				 "intel-sdw-ip-clock",
				 &prop->mclk_freq);

	FUNC2(link,
				 "intel-quirk-mask",
				 &quirk_mask);

	if (quirk_mask & SDW_INTEL_QUIRK_MASK_BUS_DISABLE)
		prop->hw_disabled = true;

	return 0;
}