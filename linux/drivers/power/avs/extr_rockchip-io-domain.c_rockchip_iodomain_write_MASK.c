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
typedef  int u32 ;
struct rockchip_iodomain_supply {int idx; struct rockchip_iodomain* iod; } ;
struct rockchip_iodomain {int /*<<< orphan*/  dev; TYPE_1__* soc_data; int /*<<< orphan*/  grf; } ;
struct TYPE_2__ {int /*<<< orphan*/  grf_offset; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int MAX_VOLTAGE_1_8 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct rockchip_iodomain_supply *supply,
				   int uV)
{
	struct rockchip_iodomain *iod = supply->iod;
	u32 val;
	int ret;

	/* set value bit */
	val = (uV > MAX_VOLTAGE_1_8) ? 0 : 1;
	val <<= supply->idx;

	/* apply hiword-mask */
	val |= (FUNC0(supply->idx) << 16);

	ret = FUNC2(iod->grf, iod->soc_data->grf_offset, val);
	if (ret)
		FUNC1(iod->dev, "Couldn't write to GRF\n");

	return ret;
}