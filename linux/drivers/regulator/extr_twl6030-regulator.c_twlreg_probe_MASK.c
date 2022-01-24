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
struct twlreg_info {TYPE_2__ desc; int /*<<< orphan*/  flags; } ;
struct regulation_constraints {int valid_modes_mask; int valid_ops_mask; } ;
struct regulator_init_data {struct regulation_constraints constraints; } ;
struct regulator_dev {int dummy; } ;
struct regulator_config {struct device_node* of_node; struct twlreg_info* driver_data; struct regulator_init_data* init_data; TYPE_1__* dev; } ;
struct TYPE_8__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;

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
 int /*<<< orphan*/  SMPS_EXTENDED_EN ; 
 int SMPS_MULTOFFSET_SMPS3 ; 
 int SMPS_MULTOFFSET_SMPS4 ; 
 int SMPS_MULTOFFSET_VIO ; 
 int /*<<< orphan*/  SMPS_OFFSET_EN ; 
#define  TWL6032_REG_SMPS3 130 
#define  TWL6032_REG_SMPS4 129 
#define  TWL6032_REG_VIO 128 
 int /*<<< orphan*/  TWL_6030_WARM_RESET ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int /*<<< orphan*/ ,int) ; 
 struct twlreg_info* FUNC3 (TYPE_1__*,struct twlreg_info const*,int,int /*<<< orphan*/ ) ; 
 struct regulator_dev* FUNC4 (TYPE_1__*,TYPE_2__*,struct regulator_config*) ; 
 struct twlreg_info* FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 struct regulator_init_data* FUNC7 (TYPE_1__*,struct device_node*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct regulator_dev*) ; 
 int FUNC9 () ; 
 int FUNC10 () ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	int id;
	struct twlreg_info		*info;
	const struct twlreg_info	*template;
	struct regulator_init_data	*initdata;
	struct regulation_constraints	*c;
	struct regulator_dev		*rdev;
	struct regulator_config		config = { };
	struct device_node		*np = pdev->dev.of_node;

	template = FUNC5(&pdev->dev);
	if (!template)
		return -ENODEV;

	id = template->desc.id;
	initdata = FUNC7(&pdev->dev, np, &template->desc);
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
	case TWL6032_REG_SMPS3:
		if (FUNC9() & SMPS_MULTOFFSET_SMPS3)
			info->flags |= SMPS_EXTENDED_EN;
		if (FUNC10() & SMPS_MULTOFFSET_SMPS3)
			info->flags |= SMPS_OFFSET_EN;
		break;
	case TWL6032_REG_SMPS4:
		if (FUNC9() & SMPS_MULTOFFSET_SMPS4)
			info->flags |= SMPS_EXTENDED_EN;
		if (FUNC10() & SMPS_MULTOFFSET_SMPS4)
			info->flags |= SMPS_OFFSET_EN;
		break;
	case TWL6032_REG_VIO:
		if (FUNC9() & SMPS_MULTOFFSET_VIO)
			info->flags |= SMPS_EXTENDED_EN;
		if (FUNC10() & SMPS_MULTOFFSET_VIO)
			info->flags |= SMPS_OFFSET_EN;
		break;
	}

	if (FUNC6(np, "ti,retain-on-reset", NULL))
		info->flags |= TWL_6030_WARM_RESET;

	config.dev = &pdev->dev;
	config.init_data = initdata;
	config.driver_data = info;
	config.of_node = np;

	rdev = FUNC4(&pdev->dev, &info->desc, &config);
	if (FUNC0(rdev)) {
		FUNC2(&pdev->dev, "can't register %s, %ld\n",
				info->desc.name, FUNC1(rdev));
		return FUNC1(rdev);
	}
	FUNC8(pdev, rdev);

	/* NOTE:  many regulators support short-circuit IRQs (presentable
	 * as REGULATOR_OVER_CURRENT notifications?) configured via:
	 *  - SC_CONFIG
	 *  - SC_DETECT1 (vintana2, vmmc1/2, vaux1/2/3/4)
	 *  - SC_DETECT2 (vusb, vdac, vio, vdd1/2, vpll2)
	 *  - IT_CONFIG
	 */

	return 0;
}