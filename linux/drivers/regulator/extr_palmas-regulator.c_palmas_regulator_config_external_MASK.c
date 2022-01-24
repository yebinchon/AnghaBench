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
struct palmas_regs_info {int /*<<< orphan*/  sleep_id; } ;
struct palmas_reg_init {int /*<<< orphan*/  roof_floor; } ;
struct palmas_pmic_driver_data {struct palmas_regs_info* palmas_regs_info; } ;
struct palmas {int /*<<< orphan*/  dev; struct palmas_pmic_driver_data* pmic_ddata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 int FUNC1 (struct palmas*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct palmas *palmas, int id,
		struct palmas_reg_init *reg_init)
{
	struct palmas_pmic_driver_data *ddata = palmas->pmic_ddata;
	struct palmas_regs_info *rinfo = &ddata->palmas_regs_info[id];
	int ret;

	ret = FUNC1(palmas, rinfo->sleep_id,
					    reg_init->roof_floor, true);
	if (ret < 0)
		FUNC0(palmas->dev,
			"Ext control config for regulator %d failed %d\n",
			id, ret);
	return ret;
}