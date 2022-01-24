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
struct sdw_slave {struct dentry* debugfs; int /*<<< orphan*/  dev; TYPE_1__* bus; } ;
struct dentry {int dummy; } ;
typedef  int /*<<< orphan*/  name ;
struct TYPE_2__ {struct dentry* debugfs; } ;

/* Variables and functions */
 struct dentry* FUNC0 (char*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,struct dentry*,struct sdw_slave*,int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sdw_slave_reg_fops ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*) ; 

void FUNC4(struct sdw_slave *slave)
{
	struct dentry *master;
	struct dentry *d;
	char name[32];

	master = slave->bus->debugfs;

	/* create the debugfs slave-name */
	FUNC3(name, sizeof(name), "%s", FUNC2(&slave->dev));
	d = FUNC0(name, master);

	FUNC1("registers", 0400, d, slave, &sdw_slave_reg_fops);

	slave->debugfs = d;
}