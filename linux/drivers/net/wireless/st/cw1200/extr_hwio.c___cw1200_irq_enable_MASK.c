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
typedef  int /*<<< orphan*/  u16 ;
struct cw1200_common {scalar_t__ hw_type; } ;

/* Variables and functions */
 scalar_t__ HIF_8601_SILICON ; 
 int /*<<< orphan*/  ST90TDS_CONFIG_REG_ID ; 
 int /*<<< orphan*/  ST90TDS_CONF_IRQ_RDY_ENABLE ; 
 int /*<<< orphan*/  ST90TDS_CONT_IRQ_RDY_ENABLE ; 
 int FUNC0 (struct cw1200_common*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct cw1200_common*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct cw1200_common*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct cw1200_common*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

int FUNC5(struct cw1200_common *priv, int enable)
{
	u32 val32;
	u16 val16;
	int ret;

	if (HIF_8601_SILICON == priv->hw_type) {
		ret = FUNC1(priv, ST90TDS_CONFIG_REG_ID, &val32);
		if (ret < 0) {
			FUNC4("Can't read config register.\n");
			return ret;
		}

		if (enable)
			val32 |= ST90TDS_CONF_IRQ_RDY_ENABLE;
		else
			val32 &= ~ST90TDS_CONF_IRQ_RDY_ENABLE;

		ret = FUNC3(priv, ST90TDS_CONFIG_REG_ID, val32);
		if (ret < 0) {
			FUNC4("Can't write config register.\n");
			return ret;
		}
	} else {
		ret = FUNC0(priv, ST90TDS_CONFIG_REG_ID, &val16);
		if (ret < 0) {
			FUNC4("Can't read control register.\n");
			return ret;
		}

		if (enable)
			val16 |= ST90TDS_CONT_IRQ_RDY_ENABLE;
		else
			val16 &= ~ST90TDS_CONT_IRQ_RDY_ENABLE;

		ret = FUNC2(priv, ST90TDS_CONFIG_REG_ID, val16);
		if (ret < 0) {
			FUNC4("Can't write control register.\n");
			return ret;
		}
	}
	return 0;
}