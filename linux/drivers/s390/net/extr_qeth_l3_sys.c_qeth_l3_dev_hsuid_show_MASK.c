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
typedef  int /*<<< orphan*/  tmp_hsuid ;
struct TYPE_2__ {int /*<<< orphan*/  hsuid; } ;
struct qeth_card {TYPE_1__ options; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  EPERM ; 
 int /*<<< orphan*/  FUNC1 (struct qeth_card*) ; 
 struct qeth_card* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
		struct device_attribute *attr, char *buf)
{
	struct qeth_card *card = FUNC2(dev);
	char tmp_hsuid[9];

	if (!card)
		return -EINVAL;

	if (!FUNC1(card))
		return -EPERM;

	FUNC3(tmp_hsuid, card->options.hsuid, sizeof(tmp_hsuid));
	FUNC0(tmp_hsuid, 8);
	return FUNC4(buf, "%s\n", tmp_hsuid);
}