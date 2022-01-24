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
typedef  int /*<<< orphan*/  u32 ;
struct tsens_priv {int num_sensors; int /*<<< orphan*/  tm_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  CNTL_ADDR ; 
 int /*<<< orphan*/  EN ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SENSOR0_SHIFT ; 
 int /*<<< orphan*/  SLP_CLK_ENA ; 
 int /*<<< orphan*/  SLP_CLK_ENA_8660 ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct tsens_priv *priv)
{
	int ret;
	u32 reg_cntl;
	u32 mask;

	mask = FUNC0(priv->num_sensors - 1, 0);
	mask <<= SENSOR0_SHIFT;
	mask |= EN;

	ret = FUNC1(priv->tm_map, CNTL_ADDR, &reg_cntl);
	if (ret)
		return;

	reg_cntl &= ~mask;

	if (priv->num_sensors > 1)
		reg_cntl &= ~SLP_CLK_ENA;
	else
		reg_cntl &= ~SLP_CLK_ENA_8660;

	FUNC2(priv->tm_map, CNTL_ADDR, reg_cntl);
}