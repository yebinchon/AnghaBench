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
struct afs_net {int /*<<< orphan*/  cells_lock; int /*<<< orphan*/  ws_cell; } ;
struct afs_cell {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  AFS_CELL_FL_NO_GC ; 
 scalar_t__ FUNC0 (struct afs_cell*) ; 
 int FUNC1 (struct afs_cell*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct afs_cell*) ; 
 struct afs_cell* FUNC6 (struct afs_net*,char const*,size_t,char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct afs_net*,struct afs_cell*) ; 
 struct afs_cell* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct afs_cell*) ; 
 char* FUNC10 (char const*,char) ; 
 size_t FUNC11 (char const*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

int FUNC15(struct afs_net *net, const char *rootcell)
{
	struct afs_cell *old_root, *new_root;
	const char *cp, *vllist;
	size_t len;

	FUNC3("");

	if (!rootcell) {
		/* module is loaded with no parameters, or built statically.
		 * - in the future we might initialize cell DB here.
		 */
		FUNC4(" = 0 [no root]");
		return 0;
	}

	cp = FUNC10(rootcell, ':');
	if (!cp) {
		FUNC2("kAFS: no VL server IP addresses specified");
		vllist = NULL;
		len = FUNC11(rootcell);
	} else {
		vllist = cp + 1;
		len = cp - rootcell;
	}

	/* allocate a cell record for the root cell */
	new_root = FUNC6(net, rootcell, len, vllist, false);
	if (FUNC0(new_root)) {
		FUNC4(" = %ld", FUNC1(new_root));
		return FUNC1(new_root);
	}

	if (!FUNC12(AFS_CELL_FL_NO_GC, &new_root->flags))
		FUNC5(new_root);

	/* install the new cell */
	FUNC13(&net->cells_lock);
	old_root = FUNC8(net->ws_cell);
	FUNC9(net->ws_cell, new_root);
	FUNC14(&net->cells_lock);

	FUNC7(net, old_root);
	FUNC4(" = 0");
	return 0;
}