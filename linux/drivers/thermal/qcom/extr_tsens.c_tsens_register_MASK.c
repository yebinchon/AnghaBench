#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tsens_priv {int num_sensors; TYPE_1__* ops; TYPE_2__* sensor; int /*<<< orphan*/  dev; } ;
struct thermal_zone_device {int dummy; } ;
struct TYPE_4__ {int id; struct thermal_zone_device* tzd; struct tsens_priv* priv; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* enable ) (struct tsens_priv*,int) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct thermal_zone_device*) ; 
 struct thermal_zone_device* FUNC1 (int /*<<< orphan*/ ,int,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct tsens_priv*,int) ; 
 int /*<<< orphan*/  tsens_of_ops ; 

__attribute__((used)) static int FUNC3(struct tsens_priv *priv)
{
	int i;
	struct thermal_zone_device *tzd;

	for (i = 0;  i < priv->num_sensors; i++) {
		priv->sensor[i].priv = priv;
		priv->sensor[i].id = i;
		tzd = FUNC1(priv->dev, i,
							   &priv->sensor[i],
							   &tsens_of_ops);
		if (FUNC0(tzd))
			continue;
		priv->sensor[i].tzd = tzd;
		if (priv->ops->enable)
			priv->ops->enable(priv, i);
	}
	return 0;
}