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
struct rcar_thermal_priv {struct rcar_thermal_common* common; } ;
struct rcar_thermal_common {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTMSK ; 
 int /*<<< orphan*/  FUNC0 (struct rcar_thermal_priv*) ; 
 int FUNC1 (struct rcar_thermal_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct rcar_thermal_common*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct rcar_thermal_priv *priv, int enable)
{
	struct rcar_thermal_common *common = priv->common;
	unsigned long flags;
	u32 mask = 0x3 << FUNC1(priv); /* enable Rising/Falling */

	if (!FUNC0(priv))
		return;

	FUNC3(&common->lock, flags);

	FUNC2(common, INTMSK, mask, enable ? 0 : mask);

	FUNC4(&common->lock, flags);
}