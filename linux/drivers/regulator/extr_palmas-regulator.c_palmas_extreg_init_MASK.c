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
struct palmas_regs_info {unsigned int ctrl_addr; } ;
struct palmas_reg_init {scalar_t__ roof_floor; scalar_t__ mode_sleep; } ;
struct palmas_pmic_driver_data {struct palmas_regs_info* palmas_regs_info; } ;
struct palmas {int /*<<< orphan*/  dev; struct palmas_pmic_driver_data* pmic_ddata; } ;

/* Variables and functions */
 unsigned int PALMAS_REGEN1_CTRL_MODE_ACTIVE ; 
 unsigned int PALMAS_REGEN1_CTRL_MODE_SLEEP ; 
 int /*<<< orphan*/  PALMAS_RESOURCE_BASE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int,int) ; 
 int FUNC1 (struct palmas*,int,struct palmas_reg_init*) ; 
 int FUNC2 (struct palmas*,int /*<<< orphan*/ ,unsigned int,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct palmas *palmas, int id,
		struct palmas_reg_init *reg_init)
{
	unsigned int addr;
	int ret;
	unsigned int val = 0;
	struct palmas_pmic_driver_data *ddata = palmas->pmic_ddata;
	struct palmas_regs_info *rinfo = &ddata->palmas_regs_info[id];

	addr = rinfo->ctrl_addr;

	if (reg_init->mode_sleep)
		val = PALMAS_REGEN1_CTRL_MODE_SLEEP;

	ret = FUNC2(palmas, PALMAS_RESOURCE_BASE,
			addr, PALMAS_REGEN1_CTRL_MODE_SLEEP, val);
	if (ret < 0) {
		FUNC0(palmas->dev, "Resource reg 0x%02x update failed %d\n",
			addr, ret);
		return ret;
	}

	if (reg_init->roof_floor) {
		/* Enable externally controlled regulator */
		ret = FUNC2(palmas, PALMAS_RESOURCE_BASE,
				addr, PALMAS_REGEN1_CTRL_MODE_ACTIVE,
				PALMAS_REGEN1_CTRL_MODE_ACTIVE);
		if (ret < 0) {
			FUNC0(palmas->dev,
				"Resource Register 0x%02x update failed %d\n",
				addr, ret);
			return ret;
		}
		return FUNC1(palmas, id, reg_init);
	}
	return 0;
}