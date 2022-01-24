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
struct rsi_hw {int num_debugfs_entries; TYPE_1__* hw; struct rsi_debugfs* dfsentry; struct rsi_common* priv; } ;
struct rsi_debugfs {int /*<<< orphan*/  subdir; int /*<<< orphan*/ * rsi_files; } ;
struct rsi_dbg_files {int /*<<< orphan*/  fops; int /*<<< orphan*/  perms; int /*<<< orphan*/  name; } ;
struct rsi_common {int dummy; } ;
typedef  int /*<<< orphan*/  devdir ;
struct TYPE_2__ {int /*<<< orphan*/  wiphy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rsi_common*,int /*<<< orphan*/ *) ; 
 struct rsi_dbg_files* dev_debugfs_files ; 
 struct rsi_debugfs* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct rsi_hw *adapter)
{
	struct rsi_common *common = adapter->priv;
	struct rsi_debugfs *dev_dbgfs;
	char devdir[6];
	int ii;
	const struct rsi_dbg_files *files;

	dev_dbgfs = FUNC2(sizeof(*dev_dbgfs), GFP_KERNEL);
	if (!dev_dbgfs)
		return -ENOMEM;

	adapter->dfsentry = dev_dbgfs;

	FUNC3(devdir, sizeof(devdir), "%s",
		 FUNC4(adapter->hw->wiphy));

	dev_dbgfs->subdir = FUNC0(devdir, NULL);

	for (ii = 0; ii < adapter->num_debugfs_entries; ii++) {
		files = &dev_debugfs_files[ii];
		dev_dbgfs->rsi_files[ii] =
		FUNC1(files->name,
				    files->perms,
				    dev_dbgfs->subdir,
				    common,
				    &files->fops);
	}
	return 0;
}