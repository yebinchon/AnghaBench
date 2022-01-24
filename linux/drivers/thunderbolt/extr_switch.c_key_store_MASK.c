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
typedef  int /*<<< orphan*/  u8 ;
struct tb_switch {TYPE_1__* tb; int /*<<< orphan*/ * key; scalar_t__ authorized; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  key ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 size_t EBUSY ; 
 size_t EINVAL ; 
 size_t ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int TB_SWITCH_KEY_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 size_t FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*) ; 
 struct tb_switch* FUNC7 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev, struct device_attribute *attr,
			 const char *buf, size_t count)
{
	struct tb_switch *sw = FUNC7(dev);
	u8 key[TB_SWITCH_KEY_SIZE];
	ssize_t ret = count;
	bool clear = false;

	if (!FUNC6(buf, "\n"))
		clear = true;
	else if (FUNC0(key, buf, sizeof(key)))
		return -EINVAL;

	if (!FUNC3(&sw->tb->lock))
		return FUNC5();

	if (sw->authorized) {
		ret = -EBUSY;
	} else {
		FUNC1(sw->key);
		if (clear) {
			sw->key = NULL;
		} else {
			sw->key = FUNC2(key, sizeof(key), GFP_KERNEL);
			if (!sw->key)
				ret = -ENOMEM;
		}
	}

	FUNC4(&sw->tb->lock);
	return ret;
}