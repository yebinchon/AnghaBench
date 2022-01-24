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
struct ffs_epfile {int /*<<< orphan*/ * dentry; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ffs_epfile*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct ffs_epfile *epfiles, unsigned count)
{
	struct ffs_epfile *epfile = epfiles;

	FUNC1();

	for (; count; --count, ++epfile) {
		FUNC0(FUNC5(&epfile->mutex));
		if (epfile->dentry) {
			FUNC2(epfile->dentry);
			FUNC3(epfile->dentry);
			epfile->dentry = NULL;
		}
	}

	FUNC4(epfiles);
}