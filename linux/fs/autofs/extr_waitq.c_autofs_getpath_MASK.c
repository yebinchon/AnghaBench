#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int len; int /*<<< orphan*/  name; } ;
struct dentry {TYPE_2__ d_name; struct dentry* d_parent; } ;
struct autofs_sb_info {int /*<<< orphan*/  fs_lock; TYPE_1__* sb; } ;
struct TYPE_3__ {struct dentry* s_root; } ;

/* Variables and functions */
 int NAME_MAX ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  rename_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct autofs_sb_info *sbi,
			  struct dentry *dentry, char *name)
{
	struct dentry *root = sbi->sb->s_root;
	struct dentry *tmp;
	char *buf;
	char *p;
	int len;
	unsigned seq;

rename_retry:
	buf = name;
	len = 0;

	seq = FUNC2(&rename_lock);
	FUNC0();
	FUNC4(&sbi->fs_lock);
	for (tmp = dentry ; tmp != root ; tmp = tmp->d_parent)
		len += tmp->d_name.len + 1;

	if (!len || --len > NAME_MAX) {
		FUNC5(&sbi->fs_lock);
		FUNC1();
		if (FUNC3(&rename_lock, seq))
			goto rename_retry;
		return 0;
	}

	*(buf + len) = '\0';
	p = buf + len - dentry->d_name.len;
	FUNC6(p, dentry->d_name.name, dentry->d_name.len);

	for (tmp = dentry->d_parent; tmp != root ; tmp = tmp->d_parent) {
		*(--p) = '/';
		p -= tmp->d_name.len;
		FUNC6(p, tmp->d_name.name, tmp->d_name.len);
	}
	FUNC5(&sbi->fs_lock);
	FUNC1();
	if (FUNC3(&rename_lock, seq))
		goto rename_retry;

	return len;
}