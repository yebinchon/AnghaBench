#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct mlxreg_hotplug_priv_data {int /*<<< orphan*/  regmap; TYPE_1__* pdev; } ;
struct mlxreg_core_item {scalar_t__ inversed; scalar_t__ health; struct mlxreg_core_data* data; } ;
struct mlxreg_core_hotplug_platform_data {struct mlxreg_core_item* items; } ;
struct mlxreg_core_data {int mask; int /*<<< orphan*/  reg; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_4__ {int index; int nr; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct mlxreg_hotplug_priv_data* FUNC0 (struct device*) ; 
 struct mlxreg_core_hotplug_platform_data* FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC3 (char*,char*,int) ; 
 TYPE_2__* FUNC4 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
					struct device_attribute *attr,
					char *buf)
{
	struct mlxreg_hotplug_priv_data *priv = FUNC0(dev);
	struct mlxreg_core_hotplug_platform_data *pdata;
	int index = FUNC4(attr)->index;
	int nr = FUNC4(attr)->nr;
	struct mlxreg_core_item *item;
	struct mlxreg_core_data *data;
	u32 regval;
	int ret;

	pdata = FUNC1(&priv->pdev->dev);
	item = pdata->items + nr;
	data = item->data + index;

	ret = FUNC2(priv->regmap, data->reg, &regval);
	if (ret)
		return ret;

	if (item->health) {
		regval &= data->mask;
	} else {
		/* Bit = 0 : functional if item->inversed is true. */
		if (item->inversed)
			regval = !(regval & data->mask);
		else
			regval = !!(regval & data->mask);
	}

	return FUNC3(buf, "%u\n", regval);
}