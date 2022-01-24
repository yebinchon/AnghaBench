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
typedef  int /*<<< orphan*/  u32 ;
struct qeth_card {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
struct device_attribute {TYPE_1__ attr; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 struct qeth_card* FUNC0 (struct device*) ; 
 int FUNC1 (struct qeth_card*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,char*,...) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				    struct device_attribute *attr, char *buf)
{
	struct qeth_card *card = FUNC0(dev);
	bool state;
	u32 vnicc;
	int rc;

	if (!card)
		return -EINVAL;

	vnicc = FUNC2(attr->attr.name);
	rc = FUNC1(card, vnicc, &state);

	if (rc == -EBUSY)
		return FUNC3(buf, "n/a (BridgePort)\n");
	if (rc == -EOPNOTSUPP)
		return FUNC3(buf, "n/a\n");
	return rc ? rc : FUNC3(buf, "%d\n", state);
}