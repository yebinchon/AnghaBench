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
struct dentry {int /*<<< orphan*/  d_parent; } ;
struct afs_net {int /*<<< orphan*/  cells_lock; int /*<<< orphan*/  ws_cell; } ;
struct afs_cell {int name_len; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ AFS_MAXCELLNAME ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct dentry* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct afs_net* FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct dentry* FUNC5 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,unsigned int) ; 
 struct afs_cell* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned int*) ; 

__attribute__((used)) static struct dentry *FUNC12(struct dentry *dentry)
{
	struct afs_cell *cell;
	struct afs_net *net = FUNC1(dentry);
	struct dentry *ret;
	unsigned int seq = 0;
	char *name;
	int len;

	if (!net->ws_cell)
		return FUNC0(-ENOENT);

	ret = FUNC0(-ENOMEM);
	name = FUNC4(AFS_MAXCELLNAME + 1, GFP_KERNEL);
	if (!name)
		goto out_p;

	FUNC9();
	do {
		FUNC11(&net->cells_lock, &seq);
		cell = FUNC8(net->ws_cell);
		if (cell) {
			len = cell->name_len;
			FUNC6(name, cell->name, len + 1);
		}
	} while (FUNC7(&net->cells_lock, seq));
	FUNC2(&net->cells_lock, seq);
	FUNC10();

	ret = FUNC0(-ENOENT);
	if (!cell)
		goto out_n;

	ret = FUNC5(name, dentry->d_parent, len);

	/* We don't want to d_add() the @cell dentry here as we don't want to
	 * the cached dentry to hide changes to the local cell name.
	 */

out_n:
	FUNC3(name);
out_p:
	return ret;
}