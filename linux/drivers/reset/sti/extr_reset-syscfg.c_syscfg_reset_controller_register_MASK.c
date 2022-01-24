#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct syscfg_reset_controller_data {int nr_channels; TYPE_1__* channels; int /*<<< orphan*/  wait_for_ack; int /*<<< orphan*/  active_low; } ;
struct TYPE_5__ {int nr_resets; int /*<<< orphan*/  of_node; int /*<<< orphan*/ * ops; } ;
struct syscfg_reset_controller {TYPE_2__ rst; TYPE_3__* channels; int /*<<< orphan*/  active_low; } ;
struct regmap_field {int dummy; } ;
typedef  struct regmap_field regmap ;
struct device {int /*<<< orphan*/  of_node; } ;
struct TYPE_6__ {struct regmap_field* ack; struct regmap_field* reset; } ;
struct TYPE_4__ {char* compatible; int /*<<< orphan*/  ack; int /*<<< orphan*/  reset; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct regmap_field*) ; 
 int FUNC1 (struct regmap_field*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 TYPE_3__* FUNC3 (struct device*,int,int,int /*<<< orphan*/ ) ; 
 struct syscfg_reset_controller* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct regmap_field* FUNC5 (struct device*,struct regmap_field*,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  syscfg_reset_ops ; 
 struct regmap_field* FUNC7 (char const*) ; 

__attribute__((used)) static int FUNC8(struct device *dev,
				const struct syscfg_reset_controller_data *data)
{
	struct syscfg_reset_controller *rc;
	int i, err;

	rc = FUNC4(dev, sizeof(*rc), GFP_KERNEL);
	if (!rc)
		return -ENOMEM;

	rc->channels = FUNC3(dev, data->nr_channels,
				    sizeof(*rc->channels), GFP_KERNEL);
	if (!rc->channels)
		return -ENOMEM;

	rc->rst.ops = &syscfg_reset_ops,
	rc->rst.of_node = dev->of_node;
	rc->rst.nr_resets = data->nr_channels;
	rc->active_low = data->active_low;

	for (i = 0; i < data->nr_channels; i++) {
		struct regmap *map;
		struct regmap_field *f;
		const char *compatible = data->channels[i].compatible;

		map = FUNC7(compatible);
		if (FUNC0(map))
			return FUNC1(map);

		f = FUNC5(dev, map, data->channels[i].reset);
		if (FUNC0(f))
			return FUNC1(f);

		rc->channels[i].reset = f;

		if (!data->wait_for_ack)
			continue;

		f = FUNC5(dev, map, data->channels[i].ack);
		if (FUNC0(f))
			return FUNC1(f);

		rc->channels[i].ack = f;
	}

	err = FUNC6(&rc->rst);
	if (!err)
		FUNC2(dev, "registered\n");

	return err;
}