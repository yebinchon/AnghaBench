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
typedef  int /*<<< orphan*/  u32 ;
struct uniphier_u3hsphy_trim_param {int dummy; } ;
struct uniphier_u3hsphy_priv {int /*<<< orphan*/  dev; TYPE_1__* data; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* trim_func ) (struct uniphier_u3hsphy_priv*,int /*<<< orphan*/ *,struct uniphier_u3hsphy_trim_param*) ;} ;

/* Variables and functions */
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  HSPHY_CFG0_HSDISC_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct uniphier_u3hsphy_priv*,int /*<<< orphan*/ *,struct uniphier_u3hsphy_trim_param*) ; 
 scalar_t__ FUNC3 (struct uniphier_u3hsphy_trim_param*) ; 
 int FUNC4 (struct uniphier_u3hsphy_priv*,struct uniphier_u3hsphy_trim_param*) ; 

__attribute__((used)) static int FUNC5(struct uniphier_u3hsphy_priv *priv,
					  u32 *pconfig)
{
	struct uniphier_u3hsphy_trim_param trim;
	int ret, trimmed = 0;

	if (priv->data->trim_func) {
		ret = FUNC4(priv, &trim);
		if (ret == -EPROBE_DEFER)
			return ret;

		/*
		 * call trim_func only when trimming parameters that aren't
		 * all-zero can be acquired. All-zero parameters mean nothing
		 * has been written to nvmem.
		 */
		if (!ret && FUNC3(&trim)) {
			priv->data->trim_func(priv, pconfig, &trim);
			trimmed = 1;
		} else {
			FUNC1(priv->dev, "can't get parameter from nvmem\n");
		}
	}

	/* use default parameters without trimming values */
	if (!trimmed) {
		*pconfig &= ~HSPHY_CFG0_HSDISC_MASK;
		*pconfig |= FUNC0(HSPHY_CFG0_HSDISC_MASK, 3);
	}

	return 0;
}