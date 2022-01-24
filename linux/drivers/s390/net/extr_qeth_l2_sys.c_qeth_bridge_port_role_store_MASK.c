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
struct TYPE_3__ {int role; scalar_t__ reflect_promisc; } ;
struct TYPE_4__ {TYPE_1__ sbp; } ;
struct qeth_card {int /*<<< orphan*/  conf_mutex; TYPE_2__ options; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
typedef  enum qeth_sbp_roles { ____Placeholder_qeth_sbp_roles } qeth_sbp_roles ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int EPERM ; 
 int QETH_SBP_ROLE_NONE ; 
 int QETH_SBP_ROLE_PRIMARY ; 
 int QETH_SBP_ROLE_SECONDARY ; 
 struct qeth_card* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct qeth_card*,int) ; 
 scalar_t__ FUNC4 (struct qeth_card*) ; 
 scalar_t__ FUNC5 (struct qeth_card*) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t count)
{
	struct qeth_card *card = FUNC0(dev);
	int rc = 0;
	enum qeth_sbp_roles role;

	if (!card)
		return -EINVAL;
	if (FUNC6(buf, "primary"))
		role = QETH_SBP_ROLE_PRIMARY;
	else if (FUNC6(buf, "secondary"))
		role = QETH_SBP_ROLE_SECONDARY;
	else if (FUNC6(buf, "none"))
		role = QETH_SBP_ROLE_NONE;
	else
		return -EINVAL;

	FUNC1(&card->conf_mutex);

	if (FUNC5(card))
		rc = -EBUSY;
	else if (card->options.sbp.reflect_promisc)
		/* Forbid direct manipulation */
		rc = -EPERM;
	else if (FUNC4(card)) {
		rc = FUNC3(card, role);
		if (!rc)
			card->options.sbp.role = role;
	} else
		card->options.sbp.role = role;

	FUNC2(&card->conf_mutex);

	return rc ? rc : count;
}