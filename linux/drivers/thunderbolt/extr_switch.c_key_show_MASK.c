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
struct tb_switch {TYPE_1__* tb; scalar_t__ key; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  TB_SWITCH_KEY_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,...) ; 
 struct tb_switch* FUNC4 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev, struct device_attribute *attr,
			char *buf)
{
	struct tb_switch *sw = FUNC4(dev);
	ssize_t ret;

	if (!FUNC0(&sw->tb->lock))
		return FUNC2();

	if (sw->key)
		ret = FUNC3(buf, "%*phN\n", TB_SWITCH_KEY_SIZE, sw->key);
	else
		ret = FUNC3(buf, "\n");

	FUNC1(&sw->tb->lock);
	return ret;
}