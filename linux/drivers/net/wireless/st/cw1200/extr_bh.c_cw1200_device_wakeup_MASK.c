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
typedef  int u16 ;
struct cw1200_common {int /*<<< orphan*/  hw_refclk; } ;

/* Variables and functions */
 int /*<<< orphan*/  ST90TDS_CONTROL_REG_ID ; 
 int ST90TDS_CONT_RDY_BIT ; 
 int /*<<< orphan*/  ST90TDS_CONT_WUP_BIT ; 
 int /*<<< orphan*/  ST90TDS_TSET_GEN_R_W_REG_ID ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct cw1200_common*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct cw1200_common*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct cw1200_common*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(struct cw1200_common *priv)
{
	u16 ctrl_reg;
	int ret;

	FUNC5("[BH] Device wakeup.\n");

	/* First, set the dpll register */
	ret = FUNC4(priv, ST90TDS_TSET_GEN_R_W_REG_ID,
				  FUNC2(priv->hw_refclk));
	if (FUNC0(ret))
		return ret;

	/* To force the device to be always-on, the host sets WLAN_UP to 1 */
	ret = FUNC3(priv, ST90TDS_CONTROL_REG_ID,
			ST90TDS_CONT_WUP_BIT);
	if (FUNC0(ret))
		return ret;

	ret = FUNC1(priv, &ctrl_reg);
	if (FUNC0(ret))
		return ret;

	/* If the device returns WLAN_RDY as 1, the device is active and will
	 * remain active.
	 */
	if (ctrl_reg & ST90TDS_CONT_RDY_BIT) {
		FUNC5("[BH] Device awake.\n");
		return 1;
	}

	return 0;
}