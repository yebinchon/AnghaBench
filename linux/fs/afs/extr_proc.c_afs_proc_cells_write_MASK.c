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
struct file {struct seq_file* private_data; } ;
struct afs_net {int dummy; } ;
struct afs_cell {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  AFS_CELL_FL_NO_GC ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct afs_cell*) ; 
 int FUNC1 (struct afs_cell*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 struct afs_cell* FUNC4 (struct afs_net*,char*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct afs_net*,struct afs_cell*) ; 
 struct afs_net* FUNC6 (struct seq_file*) ; 
 char* FUNC7 (char*,char,size_t) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 char* FUNC9 (char*,char) ; 
 scalar_t__ FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct file *file, char *buf, size_t size)
{
	struct seq_file *m = file->private_data;
	struct afs_net *net = FUNC6(m);
	char *name, *args;
	int ret;

	/* trim to first NL */
	name = FUNC7(buf, '\n', size);
	if (name)
		*name = 0;

	/* split into command, name and argslist */
	name = FUNC9(buf, ' ');
	if (!name)
		goto inval;
	do {
		*name++ = 0;
	} while(*name == ' ');
	if (!*name)
		goto inval;

	args = FUNC9(name, ' ');
	if (args) {
		do {
			*args++ = 0;
		} while(*args == ' ');
		if (!*args)
			goto inval;
	}

	/* determine command to perform */
	FUNC2("cmd=%s name=%s args=%s", buf, name, args);

	if (FUNC10(buf, "add") == 0) {
		struct afs_cell *cell;

		cell = FUNC4(net, name, FUNC11(name), args, true);
		if (FUNC0(cell)) {
			ret = FUNC1(cell);
			goto done;
		}

		if (FUNC12(AFS_CELL_FL_NO_GC, &cell->flags))
			FUNC5(net, cell);
	} else {
		goto inval;
	}

	ret = 0;

done:
	FUNC3(" = %d", ret);
	return ret;

inval:
	ret = -EINVAL;
	FUNC8("kAFS: Invalid Command on /proc/fs/afs/cells file\n");
	goto done;
}