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
struct tsens_priv {int num_sensors; int /*<<< orphan*/  tm_map; TYPE_1__* sensor; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {scalar_t__ status; } ;

/* Variables and functions */
 int /*<<< orphan*/  CNTL_ADDR ; 
 int CONFIG ; 
 int CONFIG_8660 ; 
 int /*<<< orphan*/  CONFIG_ADDR ; 
 int CONFIG_MASK ; 
 int CONFIG_MASK_8660 ; 
 int CONFIG_SHIFT_8660 ; 
 int EN ; 
 int ENODEV ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int MEASURE_PERIOD ; 
 scalar_t__ S0_STATUS_ADDR ; 
 int SENSOR0_SHIFT ; 
 int SLP_CLK_ENA ; 
 int SLP_CLK_ENA_8660 ; 
 int SW_RST ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct tsens_priv *priv)
{
	int ret, i;
	u32 reg_cntl;

	priv->tm_map = FUNC1(priv->dev, NULL);
	if (!priv->tm_map)
		return -ENODEV;

	/*
	 * The status registers for each sensor are discontiguous
	 * because some SoCs have 5 sensors while others have more
	 * but the control registers stay in the same place, i.e
	 * directly after the first 5 status registers.
	 */
	for (i = 0; i < priv->num_sensors; i++) {
		if (i >= 5)
			priv->sensor[i].status = S0_STATUS_ADDR + 40;
		priv->sensor[i].status += i * 4;
	}

	reg_cntl = SW_RST;
	ret = FUNC2(priv->tm_map, CNTL_ADDR, SW_RST, reg_cntl);
	if (ret)
		return ret;

	if (priv->num_sensors > 1) {
		reg_cntl |= SLP_CLK_ENA | (MEASURE_PERIOD << 18);
		reg_cntl &= ~SW_RST;
		ret = FUNC2(priv->tm_map, CONFIG_ADDR,
					 CONFIG_MASK, CONFIG);
	} else {
		reg_cntl |= SLP_CLK_ENA_8660 | (MEASURE_PERIOD << 16);
		reg_cntl &= ~CONFIG_MASK_8660;
		reg_cntl |= CONFIG_8660 << CONFIG_SHIFT_8660;
	}

	reg_cntl |= FUNC0(priv->num_sensors - 1, 0) << SENSOR0_SHIFT;
	ret = FUNC3(priv->tm_map, CNTL_ADDR, reg_cntl);
	if (ret)
		return ret;

	reg_cntl |= EN;
	ret = FUNC3(priv->tm_map, CNTL_ADDR, reg_cntl);
	if (ret)
		return ret;

	return 0;
}