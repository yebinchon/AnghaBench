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
struct dentry {int dummy; } ;
struct arena_info {int /*<<< orphan*/ * log_index; int /*<<< orphan*/  flags; int /*<<< orphan*/  info2off; int /*<<< orphan*/  logoff; int /*<<< orphan*/  mapoff; int /*<<< orphan*/  dataoff; int /*<<< orphan*/  infooff; int /*<<< orphan*/  nextoff; int /*<<< orphan*/  version_minor; int /*<<< orphan*/  version_major; int /*<<< orphan*/  nfree; int /*<<< orphan*/  external_lbasize; int /*<<< orphan*/  external_nlba; int /*<<< orphan*/  internal_lbasize; int /*<<< orphan*/  internal_nlba; int /*<<< orphan*/  external_lba_start; int /*<<< orphan*/  size; struct dentry* debugfs_dir; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  S_IRUGO ; 
 struct dentry* FUNC1 (char*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,struct dentry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,struct dentry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,struct dentry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,struct dentry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,int) ; 

__attribute__((used)) static void FUNC7(struct arena_info *a, struct dentry *parent,
				int idx)
{
	char dirname[32];
	struct dentry *d;

	/* If for some reason, parent bttN was not created, exit */
	if (!parent)
		return;

	FUNC6(dirname, 32, "arena%d", idx);
	d = FUNC1(dirname, parent);
	if (FUNC0(d))
		return;
	a->debugfs_dir = d;

	FUNC5("size", S_IRUGO, d, &a->size);
	FUNC5("external_lba_start", S_IRUGO, d,
				&a->external_lba_start);
	FUNC4("internal_nlba", S_IRUGO, d, &a->internal_nlba);
	FUNC3("internal_lbasize", S_IRUGO, d,
				&a->internal_lbasize);
	FUNC4("external_nlba", S_IRUGO, d, &a->external_nlba);
	FUNC3("external_lbasize", S_IRUGO, d,
				&a->external_lbasize);
	FUNC3("nfree", S_IRUGO, d, &a->nfree);
	FUNC2("version_major", S_IRUGO, d, &a->version_major);
	FUNC2("version_minor", S_IRUGO, d, &a->version_minor);
	FUNC5("nextoff", S_IRUGO, d, &a->nextoff);
	FUNC5("infooff", S_IRUGO, d, &a->infooff);
	FUNC5("dataoff", S_IRUGO, d, &a->dataoff);
	FUNC5("mapoff", S_IRUGO, d, &a->mapoff);
	FUNC5("logoff", S_IRUGO, d, &a->logoff);
	FUNC5("info2off", S_IRUGO, d, &a->info2off);
	FUNC4("flags", S_IRUGO, d, &a->flags);
	FUNC3("log_index_0", S_IRUGO, d, &a->log_index[0]);
	FUNC3("log_index_1", S_IRUGO, d, &a->log_index[1]);
}