#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct inode {int i_mode; TYPE_1__* i_fop; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int (* open ) (struct inode*,struct file*) ;int /*<<< orphan*/  release; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  S_IFDIR 130 
#define  S_IFLNK 129 
 int S_IFMT ; 
#define  S_IFREG 128 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,struct file*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int FUNC4 (struct inode*,struct file*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ceph_release ; 
 int /*<<< orphan*/  FUNC7 (char*,struct inode*,struct file*,int) ; 
 int FUNC8 (struct inode*,struct file*) ; 

__attribute__((used)) static int FUNC9(struct inode *inode, struct file *file, int fmode)
{
	int ret = 0;

	switch (inode->i_mode & S_IFMT) {
	case S_IFREG:
		FUNC3(inode);
		FUNC2(inode, file);
		/* fall through */
	case S_IFDIR:
		ret = FUNC4(inode, file, fmode,
						FUNC1(inode->i_mode));
		if (ret)
			return ret;
		break;

	case S_IFLNK:
		FUNC7("init_file %p %p 0%o (symlink)\n", inode, file,
		     inode->i_mode);
		FUNC6(FUNC5(inode), fmode); /* clean up */
		break;

	default:
		FUNC7("init_file %p %p 0%o (special)\n", inode, file,
		     inode->i_mode);
		/*
		 * we need to drop the open ref now, since we don't
		 * have .release set to ceph_release.
		 */
		FUNC6(FUNC5(inode), fmode); /* clean up */
		FUNC0(inode->i_fop->release == ceph_release);

		/* call the proper open fop */
		ret = inode->i_fop->open(inode, file);
	}
	return ret;
}