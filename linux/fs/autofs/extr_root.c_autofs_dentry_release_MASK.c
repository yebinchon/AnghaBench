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
struct autofs_sb_info {int /*<<< orphan*/  lookup_lock; } ;
struct autofs_info {int /*<<< orphan*/  expiring; int /*<<< orphan*/  active; } ;

/* Variables and functions */
 struct autofs_info* FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct autofs_info*) ; 
 struct autofs_sb_info* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct dentry *de)
{
	struct autofs_info *ino = FUNC0(de);
	struct autofs_sb_info *sbi = FUNC2(de->d_sb);

	FUNC5("releasing %p\n", de);

	if (!ino)
		return;

	if (sbi) {
		FUNC6(&sbi->lookup_lock);
		if (!FUNC4(&ino->active))
			FUNC3(&ino->active);
		if (!FUNC4(&ino->expiring))
			FUNC3(&ino->expiring);
		FUNC7(&sbi->lookup_lock);
	}

	FUNC1(ino);
}