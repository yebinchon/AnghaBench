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
struct ffs_epfile {int /*<<< orphan*/  dentry; int /*<<< orphan*/  name; int /*<<< orphan*/  mutex; struct ffs_data* ffs; } ;
struct ffs_data {unsigned int eps_count; int user_flags; unsigned int* eps_addrmap; struct ffs_epfile* epfiles; int /*<<< orphan*/  sb; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNCTIONFS_VIRTUAL_ADDR ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  ffs_epfile_operations ; 
 int /*<<< orphan*/  FUNC1 (struct ffs_epfile*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ffs_epfile*,int /*<<< orphan*/ *) ; 
 struct ffs_epfile* FUNC3 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct ffs_data *ffs)
{
	struct ffs_epfile *epfile, *epfiles;
	unsigned i, count;

	FUNC0();

	count = ffs->eps_count;
	epfiles = FUNC3(count, sizeof(*epfiles), GFP_KERNEL);
	if (!epfiles)
		return -ENOMEM;

	epfile = epfiles;
	for (i = 1; i <= count; ++i, ++epfile) {
		epfile->ffs = ffs;
		FUNC4(&epfile->mutex);
		if (ffs->user_flags & FUNCTIONFS_VIRTUAL_ADDR)
			FUNC5(epfile->name, "ep%02x", ffs->eps_addrmap[i]);
		else
			FUNC5(epfile->name, "ep%u", i);
		epfile->dentry = FUNC2(ffs->sb, epfile->name,
						 epfile,
						 &ffs_epfile_operations);
		if (FUNC6(!epfile->dentry)) {
			FUNC1(epfiles, i - 1);
			return -ENOMEM;
		}
	}

	ffs->epfiles = epfiles;
	return 0;
}