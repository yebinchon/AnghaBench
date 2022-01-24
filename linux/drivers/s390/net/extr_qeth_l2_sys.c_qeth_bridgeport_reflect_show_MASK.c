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
struct TYPE_3__ {scalar_t__ reflect_promisc_primary; scalar_t__ reflect_promisc; } ;
struct TYPE_4__ {TYPE_1__ sbp; } ;
struct qeth_card {TYPE_2__ options; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct qeth_card* FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,...) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
				struct device_attribute *attr, char *buf)
{
	struct qeth_card *card = FUNC0(dev);
	char *state;

	if (!card)
		return -EINVAL;

	if (FUNC1(card))
		return FUNC2(buf, "n/a (VNIC characteristics)\n");

	if (card->options.sbp.reflect_promisc) {
		if (card->options.sbp.reflect_promisc_primary)
			state = "primary";
		else
			state = "secondary";
	} else
		state = "none";

	return FUNC2(buf, "%s\n", state);
}