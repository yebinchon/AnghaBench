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
struct TYPE_3__ {int hostnotification; } ;
struct TYPE_4__ {TYPE_1__ sbp; } ;
struct qeth_card {int /*<<< orphan*/  conf_mutex; TYPE_2__ options; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 struct qeth_card* FUNC0 (struct device*) ; 
 int FUNC1 (char const*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct qeth_card*,int) ; 
 scalar_t__ FUNC5 (struct qeth_card*) ; 
 scalar_t__ FUNC6 (struct qeth_card*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t count)
{
	struct qeth_card *card = FUNC0(dev);
	bool enable;
	int rc;

	if (!card)
		return -EINVAL;

	rc = FUNC1(buf, &enable);
	if (rc)
		return rc;

	FUNC2(&card->conf_mutex);

	if (FUNC6(card))
		rc = -EBUSY;
	else if (FUNC5(card)) {
		rc = FUNC4(card, enable);
		if (!rc)
			card->options.sbp.hostnotification = enable;
	} else
		card->options.sbp.hostnotification = enable;

	FUNC3(&card->conf_mutex);

	return rc ? rc : count;
}