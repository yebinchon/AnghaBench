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
typedef  int /*<<< orphan*/  u8 ;
struct regmap {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HSIO_S1G_COMMON_CFG ; 
 int HSIO_S1G_COMMON_CFG_ENA_ELOOP ; 
 int HSIO_S1G_COMMON_CFG_ENA_FLOOP ; 
 int HSIO_S1G_COMMON_CFG_ENA_LANE ; 
 int HSIO_S1G_COMMON_CFG_SYS_RST ; 
 int /*<<< orphan*/  HSIO_S1G_MISC_CFG ; 
 int HSIO_S1G_MISC_CFG_DES_100FX_CPMD_ENA ; 
 int HSIO_S1G_MISC_CFG_LANE_RST ; 
 int /*<<< orphan*/  HSIO_S1G_PLL_CFG ; 
 int FUNC0 (int) ; 
 int HSIO_S1G_PLL_CFG_PLL_FSM_CTRL_DATA_M ; 
 int HSIO_S1G_PLL_CFG_PLL_FSM_ENA ; 
 int /*<<< orphan*/  FUNC1 (struct regmap*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (struct regmap*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct regmap*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct regmap *regmap, u8 serdes)
{
	int ret;

	ret = FUNC3(regmap, serdes);
	if (ret)
		return ret;

	FUNC1(regmap, HSIO_S1G_COMMON_CFG,
			   HSIO_S1G_COMMON_CFG_SYS_RST |
			   HSIO_S1G_COMMON_CFG_ENA_LANE |
			   HSIO_S1G_COMMON_CFG_ENA_ELOOP |
			   HSIO_S1G_COMMON_CFG_ENA_FLOOP,
			   HSIO_S1G_COMMON_CFG_ENA_LANE);

	FUNC1(regmap, HSIO_S1G_PLL_CFG,
			   HSIO_S1G_PLL_CFG_PLL_FSM_ENA |
			   HSIO_S1G_PLL_CFG_PLL_FSM_CTRL_DATA_M,
			   FUNC0(200) |
			   HSIO_S1G_PLL_CFG_PLL_FSM_ENA);

	FUNC1(regmap, HSIO_S1G_MISC_CFG,
			   HSIO_S1G_MISC_CFG_DES_100FX_CPMD_ENA |
			   HSIO_S1G_MISC_CFG_LANE_RST,
			   HSIO_S1G_MISC_CFG_LANE_RST);

	ret = FUNC2(regmap, serdes);
	if (ret)
		return ret;

	FUNC1(regmap, HSIO_S1G_COMMON_CFG,
			   HSIO_S1G_COMMON_CFG_SYS_RST,
			   HSIO_S1G_COMMON_CFG_SYS_RST);

	FUNC1(regmap, HSIO_S1G_MISC_CFG,
			   HSIO_S1G_MISC_CFG_LANE_RST, 0);

	ret = FUNC2(regmap, serdes);
	if (ret)
		return ret;

	return 0;
}