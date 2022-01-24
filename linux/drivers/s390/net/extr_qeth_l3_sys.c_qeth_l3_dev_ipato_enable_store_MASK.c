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
struct TYPE_2__ {int enabled; } ;
struct qeth_card {scalar_t__ state; int /*<<< orphan*/  conf_mutex; int /*<<< orphan*/  ip_lock; TYPE_1__ ipato; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 scalar_t__ CARD_STATE_DOWN ; 
 int EINVAL ; 
 int EPERM ; 
 struct qeth_card* FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (char const*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct qeth_card*) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t count)
{
	struct qeth_card *card = FUNC0(dev);
	bool enable;
	int rc = 0;

	if (!card)
		return -EINVAL;

	FUNC2(&card->conf_mutex);
	if (card->state != CARD_STATE_DOWN) {
		rc = -EPERM;
		goto out;
	}

	if (FUNC5(buf, "toggle")) {
		enable = !card->ipato.enabled;
	} else if (FUNC1(buf, &enable)) {
		rc = -EINVAL;
		goto out;
	}

	if (card->ipato.enabled != enable) {
		card->ipato.enabled = enable;
		FUNC2(&card->ip_lock);
		FUNC4(card);
		FUNC3(&card->ip_lock);
	}
out:
	FUNC3(&card->conf_mutex);
	return rc ? rc : count;
}