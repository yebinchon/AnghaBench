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
struct seq_net_private {int dummy; } ;
struct proc_dir_entry {int dummy; } ;
struct afs_net {struct proc_dir_entry* proc_afs; TYPE_1__* net; } ;
struct TYPE_2__ {int /*<<< orphan*/  proc_net; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  afs_proc_cells_ops ; 
 int /*<<< orphan*/  afs_proc_cells_write ; 
 int /*<<< orphan*/  afs_proc_rootcell_show ; 
 int /*<<< orphan*/  afs_proc_rootcell_write ; 
 int /*<<< orphan*/  afs_proc_servers_ops ; 
 int /*<<< orphan*/  afs_proc_stats_show ; 
 int /*<<< orphan*/  afs_proc_sysname_ops ; 
 int /*<<< orphan*/  afs_proc_sysname_write ; 
 int /*<<< orphan*/  FUNC2 (char*,int,struct proc_dir_entry*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,struct proc_dir_entry*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,struct proc_dir_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,struct proc_dir_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct proc_dir_entry* FUNC6 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct proc_dir_entry*) ; 

int FUNC8(struct afs_net *net)
{
	struct proc_dir_entry *p;

	FUNC0("");

	p = FUNC6(net->net, "afs", net->net->proc_net);
	if (!p)
		goto error_dir;

	if (!FUNC3("cells", 0644, p,
					&afs_proc_cells_ops,
					afs_proc_cells_write,
					sizeof(struct seq_net_private),
					NULL) ||
	    !FUNC5("rootcell", 0644, p,
					  afs_proc_rootcell_show,
					  afs_proc_rootcell_write,
					  NULL) ||
	    !FUNC2("servers", 0444, p, &afs_proc_servers_ops,
			     sizeof(struct seq_net_private)) ||
	    !FUNC4("stats", 0444, p, afs_proc_stats_show, NULL) ||
	    !FUNC3("sysname", 0644, p,
					&afs_proc_sysname_ops,
					afs_proc_sysname_write,
					sizeof(struct seq_net_private),
					NULL))
		goto error_tree;

	net->proc_afs = p;
	FUNC1(" = 0");
	return 0;

error_tree:
	FUNC7(p);
error_dir:
	FUNC1(" = -ENOMEM");
	return -ENOMEM;
}