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
struct rcar_thermal_priv {int ctemp; int /*<<< orphan*/  lock; TYPE_1__* chip; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int ctemp_bands; } ;

/* Variables and functions */
 int EIO ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct device* FUNC4 (struct rcar_thermal_priv*) ; 
 int FUNC5 (struct rcar_thermal_priv*) ; 

__attribute__((used)) static int FUNC6(struct rcar_thermal_priv *priv,
					 int *temp)
{
	int tmp;
	int ret;

	ret = FUNC5(priv);
	if (ret < 0)
		return ret;

	FUNC2(&priv->lock);
	if (priv->chip->ctemp_bands == 1)
		tmp = FUNC0((priv->ctemp * 5) - 65);
	else if (priv->ctemp < 24)
		tmp = FUNC0(((priv->ctemp * 55) - 720) / 10);
	else
		tmp = FUNC0((priv->ctemp * 5) - 60);
	FUNC3(&priv->lock);

	if ((tmp < FUNC0(-45)) || (tmp > FUNC0(125))) {
		struct device *dev = FUNC4(priv);

		FUNC1(dev, "it couldn't measure temperature correctly\n");
		return -EIO;
	}

	*temp = tmp;

	return 0;
}