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
typedef  int /*<<< orphan*/  uuid_t ;
struct tb_switch {int dummy; } ;
struct tb_sw_lookup {int /*<<< orphan*/  const* uuid; struct tb* tb; } ;
struct tb {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  lookup ;

/* Variables and functions */
 struct device* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct tb_sw_lookup*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tb_sw_lookup*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  tb_bus_type ; 
 int /*<<< orphan*/  tb_switch_match ; 
 struct tb_switch* FUNC2 (struct device*) ; 

struct tb_switch *FUNC3(struct tb *tb, const uuid_t *uuid)
{
	struct tb_sw_lookup lookup;
	struct device *dev;

	FUNC1(&lookup, 0, sizeof(lookup));
	lookup.tb = tb;
	lookup.uuid = uuid;

	dev = FUNC0(&tb_bus_type, NULL, &lookup, tb_switch_match);
	if (dev)
		return FUNC2(dev);

	return NULL;
}