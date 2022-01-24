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
struct kiocb {TYPE_1__* ki_filp; } ;
struct iov_iter {int dummy; } ;
struct inode {int /*<<< orphan*/  i_mapping; } ;
struct cifsInodeInfo {scalar_t__ oplock; } ;
typedef  scalar_t__ ssize_t ;
struct TYPE_2__ {int f_flags; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct cifsInodeInfo*) ; 
 scalar_t__ FUNC1 (struct cifsInodeInfo*) ; 
 struct cifsInodeInfo* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FYI ; 
 int O_DIRECT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC4 (struct cifsInodeInfo*) ; 
 int /*<<< orphan*/  FUNC5 (struct cifsInodeInfo*) ; 
 scalar_t__ FUNC6 (struct kiocb*,struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 struct inode* FUNC8 (TYPE_1__*) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct kiocb*,struct iov_iter*) ; 

__attribute__((used)) static ssize_t FUNC11(struct kiocb *iocb, struct iov_iter *from)
{
	struct inode *inode = FUNC8(iocb->ki_filp);
	struct cifsInodeInfo *cinode = FUNC2(inode);
	ssize_t written;
	int rc;

	if (iocb->ki_filp->f_flags & O_DIRECT) {
		written = FUNC6(iocb, from);
		if (written > 0 && FUNC0(cinode)) {
			FUNC7(inode);
			FUNC3(FYI,
				 "Set no oplock for inode=%p after a write operation\n",
				 inode);
			cinode->oplock = 0;
		}
		return written;
	}

	written = FUNC4(cinode);
	if (written)
		return written;

	written = FUNC10(iocb, from);

	if (FUNC1(FUNC2(inode)))
		goto out;

	rc = FUNC9(inode->i_mapping);
	if (rc)
		FUNC3(FYI, "cifs_file_write_iter: %d rc on %p inode\n",
			 rc, inode);

out:
	FUNC5(cinode);
	return written;
}