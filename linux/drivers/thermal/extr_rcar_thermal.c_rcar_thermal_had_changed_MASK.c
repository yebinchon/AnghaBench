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
struct rcar_thermal_priv {int /*<<< orphan*/  id; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC1 (struct rcar_thermal_priv*) ; 
 struct device* FUNC2 (struct rcar_thermal_priv*) ; 

__attribute__((used)) static u32 FUNC3(struct rcar_thermal_priv *priv, u32 status)
{
	struct device *dev = FUNC2(priv);

	status = (status >> FUNC1(priv)) & 0x3;

	if (status) {
		FUNC0(dev, "thermal%d %s%s\n",
			priv->id,
			(status & 0x2) ? "Rising " : "",
			(status & 0x1) ? "Falling" : "");
	}

	return status;
}