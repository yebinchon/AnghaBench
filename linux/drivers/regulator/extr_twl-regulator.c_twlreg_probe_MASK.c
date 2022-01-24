#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int id; int /*<<< orphan*/  name; } ;
struct twlreg_info {int /*<<< orphan*/  remap; TYPE_2__ desc; } ;
struct regulation_constraints {int valid_modes_mask; int valid_ops_mask; int always_on; } ;
struct regulator_init_data {struct regulation_constraints constraints; } ;
struct regulator_dev {int dummy; } ;
struct regulator_config {int /*<<< orphan*/  of_node; struct twlreg_info* driver_data; struct regulator_init_data* init_data; TYPE_1__* dev; } ;
struct TYPE_8__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct regulator_dev*) ; 
 int FUNC1 (struct regulator_dev*) ; 
 int REGULATOR_CHANGE_MODE ; 
 int REGULATOR_CHANGE_STATUS ; 
 int REGULATOR_CHANGE_VOLTAGE ; 
 int REGULATOR_MODE_NORMAL ; 
 int REGULATOR_MODE_STANDBY ; 
#define  TWL4030_REG_VDD1 134 
#define  TWL4030_REG_VDD2 133 
#define  TWL4030_REG_VINTANA1 132 
#define  TWL4030_REG_VINTANA2 131 
#define  TWL4030_REG_VINTDIG 130 
#define  TWL4030_REG_VIO 129 
#define  TWL4030_REG_VPLL1 128 
 int /*<<< orphan*/  TWL_MODULE_PM_RECEIVER ; 
 int /*<<< orphan*/  VREG_REMAP ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int /*<<< orphan*/ ,int) ; 
 struct twlreg_info* FUNC3 (TYPE_1__*,struct twlreg_info const*,int,int /*<<< orphan*/ ) ; 
 struct regulator_dev* FUNC4 (TYPE_1__*,TYPE_2__*,struct regulator_config*) ; 
 struct twlreg_info* FUNC5 (TYPE_1__*) ; 
 struct regulator_init_data* FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct regulator_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct twlreg_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	int id;
	struct twlreg_info		*info;
	const struct twlreg_info	*template;
	struct regulator_init_data	*initdata;
	struct regulation_constraints	*c;
	struct regulator_dev		*rdev;
	struct regulator_config		config = { };

	template = FUNC5(&pdev->dev);
	if (!template)
		return -ENODEV;

	id = template->desc.id;
	initdata = FUNC6(&pdev->dev, pdev->dev.of_node,
						&template->desc);
	if (!initdata)
		return -EINVAL;

	info = FUNC3(&pdev->dev, template, sizeof(*info), GFP_KERNEL);
	if (!info)
		return -ENOMEM;

	/* Constrain board-specific capabilities according to what
	 * this driver and the chip itself can actually do.
	 */
	c = &initdata->constraints;
	c->valid_modes_mask &= REGULATOR_MODE_NORMAL | REGULATOR_MODE_STANDBY;
	c->valid_ops_mask &= REGULATOR_CHANGE_VOLTAGE
				| REGULATOR_CHANGE_MODE
				| REGULATOR_CHANGE_STATUS;
	switch (id) {
	case TWL4030_REG_VIO:
	case TWL4030_REG_VDD1:
	case TWL4030_REG_VDD2:
	case TWL4030_REG_VPLL1:
	case TWL4030_REG_VINTANA1:
	case TWL4030_REG_VINTANA2:
	case TWL4030_REG_VINTDIG:
		c->always_on = true;
		break;
	default:
		break;
	}

	config.dev = &pdev->dev;
	config.init_data = initdata;
	config.driver_data = info;
	config.of_node = pdev->dev.of_node;

	rdev = FUNC4(&pdev->dev, &info->desc, &config);
	if (FUNC0(rdev)) {
		FUNC2(&pdev->dev, "can't register %s, %ld\n",
				info->desc.name, FUNC1(rdev));
		return FUNC1(rdev);
	}
	FUNC7(pdev, rdev);

	FUNC8(info, TWL_MODULE_PM_RECEIVER, VREG_REMAP, info->remap);

	/* NOTE:  many regulators support short-circuit IRQs (presentable
	 * as REGULATOR_OVER_CURRENT notifications?) configured via:
	 *  - SC_CONFIG
	 *  - SC_DETECT1 (vintana2, vmmc1/2, vaux1/2/3/4)
	 *  - SC_DETECT2 (vusb, vdac, vio, vdd1/2, vpll2)
	 *  - IT_CONFIG
	 */

	return 0;
}