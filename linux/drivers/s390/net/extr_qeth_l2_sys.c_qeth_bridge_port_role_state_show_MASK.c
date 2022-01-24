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
struct TYPE_3__ {int role; scalar_t__ supported_funcs; } ;
struct TYPE_4__ {TYPE_1__ sbp; } ;
struct qeth_card {TYPE_2__ options; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
typedef  enum qeth_sbp_states { ____Placeholder_qeth_sbp_states } qeth_sbp_states ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct qeth_card*,int,char*,int,int) ; 
#define  QETH_SBP_ROLE_NONE 133 
#define  QETH_SBP_ROLE_PRIMARY 132 
#define  QETH_SBP_ROLE_SECONDARY 131 
#define  QETH_SBP_STATE_ACTIVE 130 
#define  QETH_SBP_STATE_INACTIVE 129 
#define  QETH_SBP_STATE_STANDBY 128 
 struct qeth_card* FUNC1 (struct device*) ; 
 int FUNC2 (struct qeth_card*,int*,int*) ; 
 scalar_t__ FUNC3 (struct qeth_card*) ; 
 scalar_t__ FUNC4 (struct qeth_card*) ; 
 int FUNC5 (char*,char*,...) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
				struct device_attribute *attr, char *buf,
				int show_state)
{
	struct qeth_card *card = FUNC1(dev);
	enum qeth_sbp_states state = QETH_SBP_STATE_INACTIVE;
	int rc = 0;
	char *word;

	if (!card)
		return -EINVAL;

	if (FUNC4(card))
		return FUNC5(buf, "n/a (VNIC characteristics)\n");

	if (FUNC3(card) &&
					card->options.sbp.supported_funcs)
		rc = FUNC2(card,
			&card->options.sbp.role, &state);
	if (!rc) {
		if (show_state)
			switch (state) {
			case QETH_SBP_STATE_INACTIVE:
				word = "inactive"; break;
			case QETH_SBP_STATE_STANDBY:
				word = "standby"; break;
			case QETH_SBP_STATE_ACTIVE:
				word = "active"; break;
			default:
				rc = -EIO;
			}
		else
			switch (card->options.sbp.role) {
			case QETH_SBP_ROLE_NONE:
				word = "none"; break;
			case QETH_SBP_ROLE_PRIMARY:
				word = "primary"; break;
			case QETH_SBP_ROLE_SECONDARY:
				word = "secondary"; break;
			default:
				rc = -EIO;
			}
		if (rc)
			FUNC0(card, 2, "SBP%02x:%02x",
				card->options.sbp.role, state);
		else
			rc = FUNC5(buf, "%s\n", word);
	}

	return rc;
}