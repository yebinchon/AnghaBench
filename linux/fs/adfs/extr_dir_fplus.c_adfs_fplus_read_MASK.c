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
struct super_block {unsigned int s_blocksize_bits; int s_blocksize; } ;
struct buffer_head {int b_data; } ;
struct adfs_dir {int nr_buffers; struct super_block* sb; struct buffer_head** bh_fplus; struct buffer_head** bh; void* parent_id; } ;
struct adfs_bigdirtail {scalar_t__ bigdirendname; scalar_t__ bigdirendmasseq; scalar_t__* reserved; } ;
struct adfs_bigdirheader {scalar_t__* bigdirversion; scalar_t__ bigdirstartname; scalar_t__ startmasseq; int /*<<< orphan*/  bigdirparent; int /*<<< orphan*/  bigdirsize; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct buffer_head**) ; 
 int /*<<< orphan*/  BIGDIRENDNAME ; 
 int /*<<< orphan*/  BIGDIRSTARTNAME ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 unsigned long FUNC1 (struct super_block*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,char*,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,int /*<<< orphan*/ ,char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 struct buffer_head** FUNC6 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head**) ; 
 void* FUNC8 (int /*<<< orphan*/ ) ; 
 void* FUNC9 (struct super_block*,unsigned long) ; 

__attribute__((used)) static int
FUNC10(struct super_block *sb, unsigned int id, unsigned int sz, struct adfs_dir *dir)
{
	struct adfs_bigdirheader *h;
	struct adfs_bigdirtail *t;
	unsigned long block;
	unsigned int blk, size;
	int i, ret = -EIO;

	dir->nr_buffers = 0;

	/* start off using fixed bh set - only alloc for big dirs */
	dir->bh_fplus = &dir->bh[0];

	block = FUNC1(sb, id, 0);
	if (!block) {
		FUNC2(sb, "dir object %X has a hole at offset 0", id);
		goto out;
	}

	dir->bh_fplus[0] = FUNC9(sb, block);
	if (!dir->bh_fplus[0])
		goto out;
	dir->nr_buffers += 1;

	h = (struct adfs_bigdirheader *)dir->bh_fplus[0]->b_data;
	size = FUNC8(h->bigdirsize);
	if (size != sz) {
		FUNC3(sb, KERN_WARNING,
			 "directory header size %X does not match directory size %X",
			 size, sz);
	}

	if (h->bigdirversion[0] != 0 || h->bigdirversion[1] != 0 ||
	    h->bigdirversion[2] != 0 || size & 2047 ||
	    h->bigdirstartname != FUNC5(BIGDIRSTARTNAME)) {
		FUNC2(sb, "dir %06x has malformed header", id);
		goto out;
	}

	size >>= sb->s_blocksize_bits;
	if (size > FUNC0(dir->bh)) {
		/* this directory is too big for fixed bh set, must allocate */
		struct buffer_head **bh_fplus =
			FUNC6(size, sizeof(struct buffer_head *),
				GFP_KERNEL);
		if (!bh_fplus) {
			FUNC3(sb, KERN_ERR,
				 "not enough memory for dir object %X (%d blocks)",
				 id, size);
			ret = -ENOMEM;
			goto out;
		}
		dir->bh_fplus = bh_fplus;
		/* copy over the pointer to the block that we've already read */
		dir->bh_fplus[0] = dir->bh[0];
	}

	for (blk = 1; blk < size; blk++) {
		block = FUNC1(sb, id, blk);
		if (!block) {
			FUNC2(sb, "dir object %X has a hole at offset %d", id, blk);
			goto out;
		}

		dir->bh_fplus[blk] = FUNC9(sb, block);
		if (!dir->bh_fplus[blk]) {
			FUNC2(sb,	"dir object %x failed read for offset %d, mapped block %lX",
				   id, blk, block);
			goto out;
		}

		dir->nr_buffers += 1;
	}

	t = (struct adfs_bigdirtail *)
		(dir->bh_fplus[size - 1]->b_data + (sb->s_blocksize - 8));

	if (t->bigdirendname != FUNC5(BIGDIRENDNAME) ||
	    t->bigdirendmasseq != h->startmasseq ||
	    t->reserved[0] != 0 || t->reserved[1] != 0) {
		FUNC2(sb, "dir %06x has malformed tail", id);
		goto out;
	}

	dir->parent_id = FUNC8(h->bigdirparent);
	dir->sb = sb;
	return 0;

out:
	if (dir->bh_fplus) {
		for (i = 0; i < dir->nr_buffers; i++)
			FUNC4(dir->bh_fplus[i]);

		if (&dir->bh[0] != dir->bh_fplus)
			FUNC7(dir->bh_fplus);

		dir->bh_fplus = NULL;
	}

	dir->nr_buffers = 0;
	dir->sb = NULL;
	return ret;
}