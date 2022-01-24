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
struct dentry {int /*<<< orphan*/  d_sb; } ;
struct autofs_sb_info {int /*<<< orphan*/  lookup_lock; int /*<<< orphan*/  expiring_list; } ;
struct autofs_info {int /*<<< orphan*/  expiring; } ;

/* Variables and functions */
 struct autofs_info* FUNC0 (struct dentry*) ; 
 struct autofs_sb_info* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC6(struct dentry *dentry)
{
	struct autofs_sb_info *sbi = FUNC1(dentry->d_sb);
	struct autofs_info *ino = FUNC0(dentry);

	if (ino) {
		FUNC4(&sbi->lookup_lock);
		if (FUNC3(&ino->expiring))
			FUNC2(&ino->expiring, &sbi->expiring_list);
		FUNC5(&sbi->lookup_lock);
	}
}