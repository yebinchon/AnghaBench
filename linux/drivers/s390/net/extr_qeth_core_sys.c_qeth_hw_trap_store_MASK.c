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
struct TYPE_2__ {int hwtrap; } ;
struct qeth_card {int /*<<< orphan*/  conf_mutex; TYPE_1__ info; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  QETH_DIAGS_CMD_TRAP ; 
 int /*<<< orphan*/  QETH_DIAGS_TRAP_ARM ; 
 int /*<<< orphan*/  QETH_DIAGS_TRAP_CAPTURE ; 
 int /*<<< orphan*/  QETH_DIAGS_TRAP_DISARM ; 
 struct qeth_card* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct qeth_card*) ; 
 int FUNC4 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t count)
{
	struct qeth_card *card = FUNC0(dev);
	int rc = 0;
	int state = 0;

	if (!card)
		return -EINVAL;

	FUNC1(&card->conf_mutex);
	if (FUNC3(card))
		state = 1;

	if (FUNC6(buf, "arm") && !card->info.hwtrap) {
		if (state) {
			if (FUNC5(card,
			    QETH_DIAGS_CMD_TRAP)) {
				rc = FUNC4(card, QETH_DIAGS_TRAP_ARM);
				if (!rc)
					card->info.hwtrap = 1;
			} else
				rc = -EINVAL;
		} else
			card->info.hwtrap = 1;
	} else if (FUNC6(buf, "disarm") && card->info.hwtrap) {
		if (state) {
			rc = FUNC4(card, QETH_DIAGS_TRAP_DISARM);
			if (!rc)
				card->info.hwtrap = 0;
		} else
			card->info.hwtrap = 0;
	} else if (FUNC6(buf, "trap") && state && card->info.hwtrap)
		rc = FUNC4(card, QETH_DIAGS_TRAP_CAPTURE);
	else
		rc = -EINVAL;

	FUNC2(&card->conf_mutex);
	return rc ? rc : count;
}