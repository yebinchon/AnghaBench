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
struct dentry {int /*<<< orphan*/  d_lock; struct dentry* d_parent; int /*<<< orphan*/  d_sb; } ;
struct autofs_sb_info {int /*<<< orphan*/  lookup_lock; } ;

/* Variables and functions */
 struct autofs_sb_info* FUNC0 (int /*<<< orphan*/ ) ; 
 struct dentry* FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 struct dentry* FUNC3 (struct dentry*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct dentry *FUNC6(struct dentry *prev,
					       struct dentry *root)
{
	struct autofs_sb_info *sbi = FUNC0(root->d_sb);
	struct dentry *p = prev, *ret = NULL, *d = NULL;

	if (prev == NULL)
		return FUNC1(root);

	FUNC4(&sbi->lookup_lock);
	FUNC4(&p->d_lock);
	while (1) {
		struct dentry *parent;

		ret = FUNC3(p, d);
		if (ret || p == root)
			break;
		parent = p->d_parent;
		FUNC5(&p->d_lock);
		FUNC4(&parent->d_lock);
		d = p;
		p = parent;
	}
	FUNC5(&p->d_lock);
	FUNC5(&sbi->lookup_lock);
	FUNC2(prev);
	return ret;
}