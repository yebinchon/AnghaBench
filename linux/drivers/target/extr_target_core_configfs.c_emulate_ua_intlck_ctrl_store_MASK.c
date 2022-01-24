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
typedef  int u32 ;
struct se_dev_attrib {int emulate_ua_intlck_ctrl; TYPE_1__* da_dev; } ;
struct config_item {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {scalar_t__ export_count; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (char const*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 struct se_dev_attrib* FUNC3 (struct config_item*) ; 

__attribute__((used)) static ssize_t FUNC4(struct config_item *item,
		const char *page, size_t count)
{
	struct se_dev_attrib *da = FUNC3(item);
	u32 val;
	int ret;

	ret = FUNC0(page, 0, &val);
	if (ret < 0)
		return ret;

	if (val != 0 && val != 1 && val != 2) {
		FUNC2("Illegal value %d\n", val);
		return -EINVAL;
	}

	if (da->da_dev->export_count) {
		FUNC2("dev[%p]: Unable to change SE Device"
			" UA_INTRLCK_CTRL while export_count is %d\n",
			da->da_dev, da->da_dev->export_count);
		return -EINVAL;
	}
	da->emulate_ua_intlck_ctrl = val;
	FUNC1("dev[%p]: SE Device UA_INTRLCK_CTRL flag: %d\n",
		da->da_dev, val);
	return count;
}