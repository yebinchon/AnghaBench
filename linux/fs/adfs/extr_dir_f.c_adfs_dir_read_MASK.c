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
typedef  int /*<<< orphan*/  u32 ;
struct super_block {unsigned int s_blocksize_bits; } ;
struct TYPE_3__ {scalar_t__ endmasseq; char endname; scalar_t__ dircheckbyte; } ;
struct TYPE_4__ {scalar_t__ startmasseq; TYPE_1__ new; int /*<<< orphan*/  startname; } ;
struct adfs_dir {int nr_buffers; struct super_block* sb; int /*<<< orphan*/ * bh; TYPE_2__ dirtail; TYPE_2__ dirhead; } ;

/* Variables and functions */
 int EIO ; 
 int FUNC0 (struct super_block*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct adfs_dir*) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct super_block*,int) ; 

__attribute__((used)) static int FUNC8(struct super_block *sb, u32 indaddr,
			 unsigned int size, struct adfs_dir *dir)
{
	const unsigned int blocksize_bits = sb->s_blocksize_bits;
	int blk = 0;

	/*
	 * Directories which are not a multiple of 2048 bytes
	 * are considered bad v2 [3.6]
	 */
	if (size & 2047)
		goto bad_dir;

	size >>= blocksize_bits;

	dir->nr_buffers = 0;
	dir->sb = sb;

	for (blk = 0; blk < size; blk++) {
		int phys;

		phys = FUNC0(sb, indaddr, blk);
		if (!phys) {
			FUNC2(sb, "dir %06x has a hole at offset %d",
				   indaddr, blk);
			goto release_buffers;
		}

		dir->bh[blk] = FUNC7(sb, phys);
		if (!dir->bh[blk])
			goto release_buffers;
	}

	FUNC6(&dir->dirhead, FUNC4(dir->bh, 0), sizeof(dir->dirhead));
	FUNC6(&dir->dirtail, FUNC4(dir->bh, 2007), sizeof(dir->dirtail));

	if (dir->dirhead.startmasseq != dir->dirtail.new.endmasseq ||
	    FUNC5(&dir->dirhead.startname, &dir->dirtail.new.endname, 4))
		goto bad_dir;

	if (FUNC5(&dir->dirhead.startname, "Nick", 4) &&
	    FUNC5(&dir->dirhead.startname, "Hugo", 4))
		goto bad_dir;

	if (FUNC1(dir) != dir->dirtail.new.dircheckbyte)
		goto bad_dir;

	dir->nr_buffers = blk;

	return 0;

bad_dir:
	FUNC2(sb, "dir %06x is corrupted", indaddr);
release_buffers:
	for (blk -= 1; blk >= 0; blk -= 1)
		FUNC3(dir->bh[blk]);

	dir->sb = NULL;

	return -EIO;
}