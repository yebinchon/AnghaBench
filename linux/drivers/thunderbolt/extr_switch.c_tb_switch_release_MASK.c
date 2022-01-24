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
struct TYPE_2__ {int max_port_number; } ;
struct tb_switch {struct tb_switch* key; struct tb_switch* drom; struct tb_switch* ports; struct tb_switch* vendor_name; struct tb_switch* device_name; struct tb_switch* uuid; int /*<<< orphan*/  out_hopids; int /*<<< orphan*/  in_hopids; int /*<<< orphan*/  disabled; TYPE_1__ config; int /*<<< orphan*/  dma_port; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct tb_switch*) ; 
 struct tb_switch* FUNC3 (struct device*) ; 

__attribute__((used)) static void FUNC4(struct device *dev)
{
	struct tb_switch *sw = FUNC3(dev);
	int i;

	FUNC0(sw->dma_port);

	for (i = 1; i <= sw->config.max_port_number; i++) {
		if (!sw->ports[i].disabled) {
			FUNC1(&sw->ports[i].in_hopids);
			FUNC1(&sw->ports[i].out_hopids);
		}
	}

	FUNC2(sw->uuid);
	FUNC2(sw->device_name);
	FUNC2(sw->vendor_name);
	FUNC2(sw->ports);
	FUNC2(sw->drom);
	FUNC2(sw->key);
	FUNC2(sw);
}