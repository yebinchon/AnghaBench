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
struct dentry {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  user; int /*<<< orphan*/  kernel; int /*<<< orphan*/  unit_mask; int /*<<< orphan*/  count; int /*<<< orphan*/  event; int /*<<< orphan*/  enabled; } ;

/* Variables and functions */
 TYPE_1__* counter_config ; 
 unsigned int num_counters ; 
 int /*<<< orphan*/  FUNC0 (struct dentry*,char*,int /*<<< orphan*/ *) ; 
 struct dentry* FUNC1 (struct dentry*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct dentry *root)
{
	unsigned int i;

	for (i = 0; i < num_counters; i++) {
		struct dentry *dir;
		char buf[4];

		FUNC2(buf, sizeof buf, "%d", i);
		dir = FUNC1(root, buf);
		FUNC0(dir, "enabled", &counter_config[i].enabled);
		FUNC0(dir, "event", &counter_config[i].event);
		FUNC0(dir, "count", &counter_config[i].count);
		FUNC0(dir, "unit_mask", &counter_config[i].unit_mask);
		FUNC0(dir, "kernel", &counter_config[i].kernel);
		FUNC0(dir, "user", &counter_config[i].user);
	}

	return 0;
}