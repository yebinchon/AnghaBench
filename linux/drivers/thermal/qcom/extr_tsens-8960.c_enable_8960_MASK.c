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
typedef  int u32 ;
struct tsens_priv {int num_sensors; int /*<<< orphan*/  tm_map; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  CNTL_ADDR ; 
 int EN ; 
 scalar_t__ SENSOR0_SHIFT ; 
 int SLP_CLK_ENA ; 
 int SLP_CLK_ENA_8660 ; 
 int SW_RST ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct tsens_priv *priv, int id)
{
	int ret;
	u32 reg, mask;

	ret = FUNC1(priv->tm_map, CNTL_ADDR, &reg);
	if (ret)
		return ret;

	mask = FUNC0(id + SENSOR0_SHIFT);
	ret = FUNC2(priv->tm_map, CNTL_ADDR, reg | SW_RST);
	if (ret)
		return ret;

	if (priv->num_sensors > 1)
		reg |= mask | SLP_CLK_ENA | EN;
	else
		reg |= mask | SLP_CLK_ENA_8660 | EN;

	ret = FUNC2(priv->tm_map, CNTL_ADDR, reg);
	if (ret)
		return ret;

	return 0;
}