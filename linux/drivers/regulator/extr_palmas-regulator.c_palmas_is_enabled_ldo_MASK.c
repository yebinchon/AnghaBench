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
struct regulator_dev {int dummy; } ;
struct palmas_regs_info {int /*<<< orphan*/  ctrl_addr; } ;
struct palmas_pmic_driver_data {struct palmas_regs_info* palmas_regs_info; } ;
struct palmas_pmic {TYPE_1__* palmas; } ;
struct TYPE_2__ {struct palmas_pmic_driver_data* pmic_ddata; } ;

/* Variables and functions */
 unsigned int PALMAS_LDO1_CTRL_STATUS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,unsigned int*) ; 
 struct palmas_pmic* FUNC1 (struct regulator_dev*) ; 
 int FUNC2 (struct regulator_dev*) ; 

__attribute__((used)) static int FUNC3(struct regulator_dev *dev)
{
	int id = FUNC2(dev);
	struct palmas_pmic *pmic = FUNC1(dev);
	struct palmas_pmic_driver_data *ddata = pmic->palmas->pmic_ddata;
	struct palmas_regs_info *rinfo = &ddata->palmas_regs_info[id];
	unsigned int reg;

	FUNC0(pmic->palmas, rinfo->ctrl_addr, &reg);

	reg &= PALMAS_LDO1_CTRL_STATUS;

	return !!(reg);
}