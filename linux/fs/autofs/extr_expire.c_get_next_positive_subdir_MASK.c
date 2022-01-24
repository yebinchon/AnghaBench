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
struct dentry {int /*<<< orphan*/  d_lock; int /*<<< orphan*/  d_sb; } ;
struct autofs_sb_info {int /*<<< orphan*/  lookup_lock; } ;

/* Variables and functions */
 struct autofs_sb_info* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 struct dentry* FUNC2 (struct dentry*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct dentry *FUNC5(struct dentry *prev,
					       struct dentry *root)
{
	struct autofs_sb_info *sbi = FUNC0(root->d_sb);
	struct dentry *q;

	FUNC3(&sbi->lookup_lock);
	FUNC3(&root->d_lock);
	q = FUNC2(root, prev);
	FUNC4(&root->d_lock);
	FUNC4(&sbi->lookup_lock);
	FUNC1(prev);
	return q;
}