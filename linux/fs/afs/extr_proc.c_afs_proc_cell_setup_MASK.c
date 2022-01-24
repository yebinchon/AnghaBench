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
struct seq_net_private {int dummy; } ;
struct proc_dir_entry {int dummy; } ;
struct afs_vl_seq_net_private {int dummy; } ;
struct afs_net {int /*<<< orphan*/  proc_afs; int /*<<< orphan*/  net; } ;
struct afs_cell {int /*<<< orphan*/  name; struct afs_net* net; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char*,struct afs_cell*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  afs_proc_cell_vlservers_ops ; 
 int /*<<< orphan*/  afs_proc_cell_volumes_ops ; 
 int /*<<< orphan*/  FUNC2 (char*,int,struct proc_dir_entry*,int /*<<< orphan*/ *,int,struct afs_cell*) ; 
 struct proc_dir_entry* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(struct afs_cell *cell)
{
	struct proc_dir_entry *dir;
	struct afs_net *net = cell->net;

	FUNC0("%p{%s},%p", cell, cell->name, net->proc_afs);

	dir = FUNC3(net->net, cell->name, net->proc_afs);
	if (!dir)
		goto error_dir;

	if (!FUNC2("vlservers", 0444, dir,
				  &afs_proc_cell_vlservers_ops,
				  sizeof(struct afs_vl_seq_net_private),
				  cell) ||
	    !FUNC2("volumes", 0444, dir,
				  &afs_proc_cell_volumes_ops,
				  sizeof(struct seq_net_private),
				  cell))
		goto error_tree;

	FUNC1(" = 0");
	return 0;

error_tree:
	FUNC4(cell->name, net->proc_afs);
error_dir:
	FUNC1(" = -ENOMEM");
	return -ENOMEM;
}