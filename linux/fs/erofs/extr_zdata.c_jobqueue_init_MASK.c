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
struct TYPE_2__ {int /*<<< orphan*/  work; int /*<<< orphan*/  wait; } ;
struct z_erofs_unzip_io {int /*<<< orphan*/  head; TYPE_1__ u; int /*<<< orphan*/  pending_bios; } ;
struct z_erofs_unzip_io_sb {struct super_block* sb; struct z_erofs_unzip_io io; } ;
struct super_block {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Z_EROFS_PCLUSTER_TAIL_CLOSED ; 
 int __GFP_NOFAIL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct z_erofs_unzip_io_sb* FUNC4 (int,int) ; 
 int /*<<< orphan*/  z_erofs_vle_unzip_wq ; 

__attribute__((used)) static struct z_erofs_unzip_io *FUNC5(struct super_block *sb,
					      struct z_erofs_unzip_io *io,
					      bool foreground)
{
	struct z_erofs_unzip_io_sb *iosb;

	if (foreground) {
		/* waitqueue available for foreground io */
		FUNC0(!io);

		FUNC3(&io->u.wait);
		FUNC2(&io->pending_bios, 0);
		goto out;
	}

	iosb = FUNC4(sizeof(*iosb), GFP_KERNEL | __GFP_NOFAIL);
	FUNC0(!iosb);

	/* initialize fields in the allocated descriptor */
	io = &iosb->io;
	iosb->sb = sb;
	FUNC1(&io->u.work, z_erofs_vle_unzip_wq);
out:
	io->head = Z_EROFS_PCLUSTER_TAIL_CLOSED;
	return io;
}