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
typedef  scalar_t__ u8 ;
struct fusb302_chip {int cc1; int cc2; int intr_bc_lvl; int /*<<< orphan*/  tcpm_port; int /*<<< orphan*/  toggling_mode; } ;
typedef  enum typec_cc_status { ____Placeholder_typec_cc_status } typec_cc_status ;
typedef  enum typec_cc_polarity { ____Placeholder_typec_cc_polarity } typec_cc_polarity ;

/* Variables and functions */
 int /*<<< orphan*/  FUSB_REG_MASK ; 
 int /*<<< orphan*/  FUSB_REG_MASK_BC_LVL ; 
 int /*<<< orphan*/  FUSB_REG_STATUS0 ; 
 scalar_t__ FUSB_REG_STATUS0_BC_LVL_MASK ; 
 scalar_t__ FUSB_REG_STATUS1A_TOGSS_SNK1 ; 
 int /*<<< orphan*/  TOGGLING_MODE_OFF ; 
 int TYPEC_CC_OPEN ; 
 int TYPEC_POLARITY_CC1 ; 
 int TYPEC_POLARITY_CC2 ; 
 int* cc_polarity_name ; 
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (struct fusb302_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct fusb302_chip*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (struct fusb302_chip*,char*,...) ; 
 int FUNC4 (struct fusb302_chip*,int,int,int) ; 
 int FUNC5 (struct fusb302_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int* typec_cc_status_name ; 

__attribute__((used)) static int FUNC7(struct fusb302_chip *chip,
				      u8 togdone_result)
{
	int ret = 0;
	u8 status0;
	u8 bc_lvl;
	enum typec_cc_polarity cc_polarity;
	enum typec_cc_status cc_status_active, cc1, cc2;

	/* set polarity and pull_up, pull_down */
	cc_polarity = (togdone_result == FUSB_REG_STATUS1A_TOGSS_SNK1) ?
		      TYPEC_POLARITY_CC1 : TYPEC_POLARITY_CC2;
	ret = FUNC4(chip, cc_polarity, false, true);
	if (ret < 0) {
		FUNC3(chip, "cannot set cc polarity %s, ret=%d",
			    cc_polarity_name[cc_polarity], ret);
		return ret;
	}
	/* fusb302_set_cc_polarity() has set the correct measure block */
	ret = FUNC2(chip, FUSB_REG_STATUS0, &status0);
	if (ret < 0)
		return ret;
	bc_lvl = status0 & FUSB_REG_STATUS0_BC_LVL_MASK;
	cc_status_active = FUNC0(bc_lvl);
	/* restart toggling if the cc status on the active line is OPEN */
	if (cc_status_active == TYPEC_CC_OPEN) {
		FUNC3(chip, "restart toggling as CC_OPEN detected");
		ret = FUNC5(chip, chip->toggling_mode);
		return ret;
	}
	/* update tcpm with the new cc value */
	cc1 = (cc_polarity == TYPEC_POLARITY_CC1) ?
	      cc_status_active : TYPEC_CC_OPEN;
	cc2 = (cc_polarity == TYPEC_POLARITY_CC2) ?
	      cc_status_active : TYPEC_CC_OPEN;
	if ((chip->cc1 != cc1) || (chip->cc2 != cc2)) {
		chip->cc1 = cc1;
		chip->cc2 = cc2;
		FUNC6(chip->tcpm_port);
	}
	/* turn off toggling */
	ret = FUNC5(chip, TOGGLING_MODE_OFF);
	if (ret < 0) {
		FUNC3(chip,
			    "cannot set toggling mode off, ret=%d", ret);
		return ret;
	}
	/* unmask bc_lvl interrupt */
	ret = FUNC1(chip, FUSB_REG_MASK, FUSB_REG_MASK_BC_LVL);
	if (ret < 0) {
		FUNC3(chip,
			    "cannot unmask bc_lcl interrupt, ret=%d", ret);
		return ret;
	}
	chip->intr_bc_lvl = true;
	FUNC3(chip, "detected cc1=%s, cc2=%s",
		    typec_cc_status_name[cc1],
		    typec_cc_status_name[cc2]);

	return ret;
}