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
struct lochnagar_pin_priv {int /*<<< orphan*/  dev; TYPE_1__* lochnagar; } ;
struct lochnagar_pin {int /*<<< orphan*/  name; int /*<<< orphan*/  reg; } ;
struct TYPE_2__ {int type; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
#define  LOCHNAGAR1 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct lochnagar_pin_priv*,unsigned int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct lochnagar_pin_priv *priv,
				 const struct lochnagar_pin *pin,
				 unsigned int op)
{
	int ret;

	switch (priv->lochnagar->type) {
	case LOCHNAGAR1:
		break;
	default:
		ret = FUNC2(priv, op);
		if (ret < 0) {
			FUNC1(priv->dev, "Failed to get channel for %s: %d\n",
				pin->name, ret);
			return ret;
		}

		op = ret;
		break;
	}

	FUNC0(priv->dev, "Set pin %s to 0x%x\n", pin->name, op);

	ret = FUNC3(priv->lochnagar->regmap, pin->reg, op);
	if (ret)
		FUNC1(priv->dev, "Failed to set %s mux: %d\n",
			pin->name, ret);

	return 0;
}