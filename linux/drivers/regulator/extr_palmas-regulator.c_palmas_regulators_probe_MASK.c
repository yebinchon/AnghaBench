#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct regulator_config {struct palmas_pmic* driver_data; TYPE_2__* dev; int /*<<< orphan*/  regmap; } ;
struct TYPE_8__ {struct device_node* of_node; int /*<<< orphan*/  parent; } ;
struct platform_device {char* name; TYPE_2__ dev; } ;
struct palmas_pmic_platform_data {int dummy; } ;
struct palmas_pmic_driver_data {int (* smps_register ) (struct palmas_pmic*,struct palmas_pmic_driver_data*,struct palmas_pmic_platform_data*,char const*,struct regulator_config) ;int (* ldo_register ) (struct palmas_pmic*,struct palmas_pmic_driver_data*,struct palmas_pmic_platform_data*,char const*,struct regulator_config) ;} ;
struct palmas_pmic {int smps123; int smps12; int smps457; struct palmas* palmas; TYPE_2__* dev; } ;
struct palmas {int /*<<< orphan*/ * regmap; struct palmas_pmic_driver_data* pmic_ddata; struct palmas_pmic* pmic; } ;
struct of_device_id {scalar_t__ data; } ;
struct device_node {int dummy; } ;
struct TYPE_9__ {int has_regen3; } ;
struct TYPE_7__ {int /*<<< orphan*/  ctrl_addr; } ;

/* Variables and functions */
 int ENODATA ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t PALMAS_REG_REGEN2 ; 
 int /*<<< orphan*/  PALMAS_SMPS_CTRL ; 
 unsigned int PALMAS_SMPS_CTRL_SMPS12_SMPS123_EN ; 
 unsigned int PALMAS_SMPS_CTRL_SMPS45_SMPS457_EN ; 
 size_t REGULATOR_SLAVE ; 
 int /*<<< orphan*/  TPS659038_REGEN2_CTRL ; 
 struct palmas* FUNC0 (int /*<<< orphan*/ ) ; 
 struct palmas_pmic_platform_data* FUNC1 (TYPE_2__*) ; 
 void* FUNC2 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct device_node*,char*) ; 
 struct of_device_id* FUNC4 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  of_palmas_match_tbl ; 
 TYPE_3__ palmas_ddata ; 
 int FUNC6 (TYPE_2__*,struct device_node*,struct palmas_pmic_platform_data*,struct palmas_pmic_driver_data*) ; 
 TYPE_1__* palmas_generic_regs_info ; 
 int FUNC7 (struct palmas*,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct palmas_pmic*) ; 
 int FUNC9 (struct palmas_pmic*,struct palmas_pmic_driver_data*,struct palmas_pmic_platform_data*,char const*,struct regulator_config) ; 
 int FUNC10 (struct palmas_pmic*,struct palmas_pmic_driver_data*,struct palmas_pmic_platform_data*,char const*,struct regulator_config) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct palmas *palmas = FUNC0(pdev->dev.parent);
	struct palmas_pmic_platform_data *pdata = FUNC1(&pdev->dev);
	struct device_node *node = pdev->dev.of_node;
	struct palmas_pmic_driver_data *driver_data;
	struct regulator_config config = { };
	struct palmas_pmic *pmic;
	const char *pdev_name;
	const struct of_device_id *match;
	int ret = 0;
	unsigned int reg;

	match = FUNC4(FUNC5(of_palmas_match_tbl), &pdev->dev);

	if (!match)
		return -ENODATA;

	driver_data = (struct palmas_pmic_driver_data *)match->data;
	pdata = FUNC2(&pdev->dev, sizeof(*pdata), GFP_KERNEL);
	if (!pdata)
		return -ENOMEM;

	pmic = FUNC2(&pdev->dev, sizeof(*pmic), GFP_KERNEL);
	if (!pmic)
		return -ENOMEM;

	if (FUNC3(node, "ti,tps659038-pmic")) {
		palmas_generic_regs_info[PALMAS_REG_REGEN2].ctrl_addr =
							TPS659038_REGEN2_CTRL;
		palmas_ddata.has_regen3 = false;
	}

	pmic->dev = &pdev->dev;
	pmic->palmas = palmas;
	palmas->pmic = pmic;
	FUNC8(pdev, pmic);
	pmic->palmas->pmic_ddata = driver_data;

	ret = FUNC6(&pdev->dev, node, pdata, driver_data);
	if (ret)
		return ret;

	ret = FUNC7(palmas, PALMAS_SMPS_CTRL, &reg);
	if (ret)
		return ret;

	if (reg & PALMAS_SMPS_CTRL_SMPS12_SMPS123_EN) {
		pmic->smps123 = 1;
		pmic->smps12 = 1;
	}

	if (reg & PALMAS_SMPS_CTRL_SMPS45_SMPS457_EN)
		pmic->smps457 = 1;

	config.regmap = palmas->regmap[REGULATOR_SLAVE];
	config.dev = &pdev->dev;
	config.driver_data = pmic;
	pdev_name = pdev->name;

	ret = driver_data->smps_register(pmic, driver_data, pdata, pdev_name,
					 config);
	if (ret)
		return ret;

	ret = driver_data->ldo_register(pmic, driver_data, pdata, pdev_name,
					config);

	return ret;
}