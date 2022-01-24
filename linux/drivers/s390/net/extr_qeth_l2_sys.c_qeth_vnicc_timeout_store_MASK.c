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
struct qeth_card {int /*<<< orphan*/  conf_mutex; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 struct qeth_card* FUNC0 (struct device*) ; 
 int FUNC1 (char const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct qeth_card*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
					struct device_attribute *attr,
					const char *buf, size_t count)
{
	struct qeth_card *card = FUNC0(dev);
	u32 timeout;
	int rc;

	if (!card)
		return -EINVAL;

	rc = FUNC1(buf, 10, &timeout);
	if (rc)
		return rc;

	FUNC2(&card->conf_mutex);
	rc = FUNC4(card, timeout);
	FUNC3(&card->conf_mutex);
	return rc ? rc : count;
}