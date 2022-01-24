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
typedef  scalar_t__ u32 ;
struct spm_driver_data {TYPE_1__* reg_data; scalar_t__ reg_base; } ;
typedef  enum spm_reg { ____Placeholder_spm_reg } spm_reg ;
struct TYPE_2__ {scalar_t__* reg_offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static inline void FUNC3(struct spm_driver_data *drv,
					enum spm_reg reg, u32 val)
{
	u32 ret;

	if (!drv->reg_data->reg_offset[reg])
		return;

	do {
		FUNC2(val, drv->reg_base +
				drv->reg_data->reg_offset[reg]);
		ret = FUNC1(drv->reg_base +
				drv->reg_data->reg_offset[reg]);
		if (ret == val)
			break;
		FUNC0();
	} while (1);
}