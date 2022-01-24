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
struct regmap {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  nr_resets; int /*<<< orphan*/ * ops; struct device_node* of_node; } ;
struct hi6220_reset_data {TYPE_1__ rc_dev; struct regmap* regmap; } ;
struct device_node {int dummy; } ;
typedef  enum hi6220_reset_ctrl_type { ____Placeholder_hi6220_reset_ctrl_type } hi6220_reset_ctrl_type ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct regmap*) ; 
 int MEDIA ; 
 int /*<<< orphan*/  MEDIA_MAX_INDEX ; 
 int /*<<< orphan*/  PERIPH_MAX_INDEX ; 
 int FUNC1 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 struct hi6220_reset_data* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hi6220_media_reset_ops ; 
 int /*<<< orphan*/  hi6220_peripheral_reset_ops ; 
 scalar_t__ FUNC4 (struct device*) ; 
 int FUNC5 (TYPE_1__*) ; 
 struct regmap* FUNC6 (struct device_node*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	struct device *dev = &pdev->dev;
	enum hi6220_reset_ctrl_type type;
	struct hi6220_reset_data *data;
	struct regmap *regmap;

	data = FUNC3(dev, sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	type = (enum hi6220_reset_ctrl_type)FUNC4(dev);

	regmap = FUNC6(np);
	if (FUNC0(regmap)) {
		FUNC2(dev, "failed to get reset controller regmap\n");
		return FUNC1(regmap);
	}

	data->regmap = regmap;
	data->rc_dev.of_node = np;
	if (type == MEDIA) {
		data->rc_dev.ops = &hi6220_media_reset_ops;
		data->rc_dev.nr_resets = MEDIA_MAX_INDEX;
	} else {
		data->rc_dev.ops = &hi6220_peripheral_reset_ops;
		data->rc_dev.nr_resets = PERIPH_MAX_INDEX;
	}

	return FUNC5(&data->rc_dev);
}