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
struct seq_file {int dummy; } ;
struct afs_net {int /*<<< orphan*/  n_store_bytes; int /*<<< orphan*/  n_stores; int /*<<< orphan*/  n_fetch_bytes; int /*<<< orphan*/  n_fetches; int /*<<< orphan*/  n_dir_rm; int /*<<< orphan*/  n_dir_cr; int /*<<< orphan*/  n_read_dir; int /*<<< orphan*/  n_relpg; int /*<<< orphan*/  n_inval; int /*<<< orphan*/  n_reval; int /*<<< orphan*/  n_lookup; } ;

/* Variables and functions */
 struct afs_net* FUNC0 (struct seq_file*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*) ; 

__attribute__((used)) static int FUNC5(struct seq_file *m, void *v)
{
	struct afs_net *net = FUNC0(m);

	FUNC4(m, "kAFS statistics\n");

	FUNC3(m, "dir-mgmt: look=%u reval=%u inval=%u relpg=%u\n",
		   FUNC2(&net->n_lookup),
		   FUNC2(&net->n_reval),
		   FUNC2(&net->n_inval),
		   FUNC2(&net->n_relpg));

	FUNC3(m, "dir-data: rdpg=%u\n",
		   FUNC2(&net->n_read_dir));

	FUNC3(m, "dir-edit: cr=%u rm=%u\n",
		   FUNC2(&net->n_dir_cr),
		   FUNC2(&net->n_dir_rm));

	FUNC3(m, "file-rd : n=%u nb=%lu\n",
		   FUNC2(&net->n_fetches),
		   FUNC1(&net->n_fetch_bytes));
	FUNC3(m, "file-wr : n=%u nb=%lu\n",
		   FUNC2(&net->n_stores),
		   FUNC1(&net->n_store_bytes));
	return 0;
}