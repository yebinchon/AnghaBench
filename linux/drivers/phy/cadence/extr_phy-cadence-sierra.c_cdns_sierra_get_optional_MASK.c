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
struct device_node {int dummy; } ;
struct cdns_sierra_inst {int /*<<< orphan*/  phy_type; int /*<<< orphan*/  num_lanes; int /*<<< orphan*/  mlane; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct device_node*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1(struct cdns_sierra_inst *inst,
				    struct device_node *child)
{
	if (FUNC0(child, "reg", &inst->mlane))
		return -EINVAL;

	if (FUNC0(child, "cdns,num-lanes", &inst->num_lanes))
		return -EINVAL;

	if (FUNC0(child, "cdns,phy-type", &inst->phy_type))
		return -EINVAL;

	return 0;
}