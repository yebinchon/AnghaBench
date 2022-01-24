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
struct super_block {int dummy; } ;
struct fs_context {int sb_flags; } ;
struct TYPE_4__ {scalar_t__ files; scalar_t__ blocks; } ;
struct TYPE_3__ {int mode; int offset; } ;
struct cramfs_super {scalar_t__ magic; int flags; int size; TYPE_2__ fsid; TYPE_1__ root; } ;
struct cramfs_sb_info {int size; scalar_t__ magic; int flags; scalar_t__ files; scalar_t__ blocks; } ;

/* Variables and functions */
 int CRAMFS_FLAG_FSID_VERSION_2 ; 
 int CRAMFS_FLAG_SHIFTED_ROOT_OFFSET ; 
 scalar_t__ CRAMFS_MAGIC ; 
 scalar_t__ CRAMFS_MAGIC_WEND ; 
 struct cramfs_sb_info* FUNC0 (struct super_block*) ; 
 int CRAMFS_SUPPORTED_FLAGS ; 
 int EINVAL ; 
 int PAGE_SIZE ; 
 int SB_SILENT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct fs_context*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct fs_context*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct cramfs_super*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  read_mutex ; 

__attribute__((used)) static int FUNC8(struct super_block *sb, struct fs_context *fc,
			     struct cramfs_super *super)
{
	struct cramfs_sb_info *sbi = FUNC0(sb);
	unsigned long root_offset;
	bool silent = fc->sb_flags & SB_SILENT;

	/* We don't know the real size yet */
	sbi->size = PAGE_SIZE;

	/* Read the first block and get the superblock from it */
	FUNC6(&read_mutex);
	FUNC5(super, FUNC2(sb, 0, sizeof(*super)), sizeof(*super));
	FUNC7(&read_mutex);

	/* Do sanity checks on the superblock */
	if (super->magic != CRAMFS_MAGIC) {
		/* check for wrong endianness */
		if (super->magic == CRAMFS_MAGIC_WEND) {
			if (!silent)
				FUNC3(fc, "cramfs: wrong endianness");
			return -EINVAL;
		}

		/* check at 512 byte offset */
		FUNC6(&read_mutex);
		FUNC5(super,
		       FUNC2(sb, 512, sizeof(*super)),
		       sizeof(*super));
		FUNC7(&read_mutex);
		if (super->magic != CRAMFS_MAGIC) {
			if (super->magic == CRAMFS_MAGIC_WEND && !silent)
				FUNC3(fc, "cramfs: wrong endianness");
			else if (!silent)
				FUNC3(fc, "cramfs: wrong magic");
			return -EINVAL;
		}
	}

	/* get feature flags first */
	if (super->flags & ~CRAMFS_SUPPORTED_FLAGS) {
		FUNC3(fc, "cramfs: unsupported filesystem features");
		return -EINVAL;
	}

	/* Check that the root inode is in a sane state */
	if (!FUNC1(super->root.mode)) {
		FUNC3(fc, "cramfs: root is not a directory");
		return -EINVAL;
	}
	/* correct strange, hard-coded permissions of mkcramfs */
	super->root.mode |= 0555;

	root_offset = super->root.offset << 2;
	if (super->flags & CRAMFS_FLAG_FSID_VERSION_2) {
		sbi->size = super->size;
		sbi->blocks = super->fsid.blocks;
		sbi->files = super->fsid.files;
	} else {
		sbi->size = 1<<28;
		sbi->blocks = 0;
		sbi->files = 0;
	}
	sbi->magic = super->magic;
	sbi->flags = super->flags;
	if (root_offset == 0)
		FUNC4(fc, "cramfs: empty filesystem");
	else if (!(super->flags & CRAMFS_FLAG_SHIFTED_ROOT_OFFSET) &&
		 ((root_offset != sizeof(struct cramfs_super)) &&
		  (root_offset != 512 + sizeof(struct cramfs_super))))
	{
		FUNC3(fc, "cramfs: bad root offset %lu", root_offset);
		return -EINVAL;
	}

	return 0;
}