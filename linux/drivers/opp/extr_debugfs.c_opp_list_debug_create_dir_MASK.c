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
struct opp_table {struct dentry* dentry; int /*<<< orphan*/  dentry_name; } ;
struct opp_device {struct dentry* dentry; struct device* dev; } ;
struct device {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 struct dentry* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rootdir ; 

__attribute__((used)) static void FUNC2(struct opp_device *opp_dev,
				      struct opp_table *opp_table)
{
	const struct device *dev = opp_dev->dev;
	struct dentry *d;

	FUNC1(dev, opp_table->dentry_name);

	/* Create device specific directory */
	d = FUNC0(opp_table->dentry_name, rootdir);

	opp_dev->dentry = d;
	opp_table->dentry = d;
}