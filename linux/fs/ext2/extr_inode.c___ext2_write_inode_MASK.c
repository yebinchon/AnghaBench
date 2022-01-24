#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uid_t ;
struct super_block {int /*<<< orphan*/  s_id; } ;
struct TYPE_8__ {int tv_sec; } ;
struct TYPE_7__ {int tv_sec; } ;
struct TYPE_6__ {int tv_sec; } ;
struct inode {int i_size; int i_blocks; int i_generation; int /*<<< orphan*/  i_rdev; int /*<<< orphan*/  i_mode; TYPE_3__ i_mtime; TYPE_2__ i_ctime; TYPE_1__ i_atime; int /*<<< orphan*/  i_nlink; scalar_t__ i_ino; struct super_block* i_sb; } ;
struct ext2_inode_info {int i_state; int i_dtime; int i_flags; int i_faddr; int i_file_acl; int i_dir_acl; void** i_data; int /*<<< orphan*/  i_frag_size; int /*<<< orphan*/  i_frag_no; } ;
struct ext2_inode {void** i_block; void* i_generation; void* i_size_high; void* i_dir_acl; void* i_file_acl; int /*<<< orphan*/  i_fsize; int /*<<< orphan*/  i_frag; void* i_faddr; void* i_flags; void* i_dtime; void* i_blocks; void* i_mtime; void* i_ctime; void* i_atime; void* i_size; void* i_links_count; void* i_gid_high; void* i_uid_high; void* i_gid_low; void* i_uid_low; void* i_mode; } ;
struct buffer_head {int dummy; } ;
typedef  scalar_t__ ino_t ;
typedef  int /*<<< orphan*/  gid_t ;
struct TYPE_10__ {TYPE_4__* s_es; int /*<<< orphan*/  s_lock; int /*<<< orphan*/  s_inode_size; } ;
struct TYPE_9__ {void* s_rev_level; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  EXT2_FEATURE_RO_COMPAT_LARGE_FILE ; 
 int EXT2_GOOD_OLD_REV ; 
 int /*<<< orphan*/  FUNC0 (struct super_block*,int /*<<< orphan*/ ) ; 
 struct ext2_inode_info* FUNC1 (struct inode*) ; 
 int EXT2_N_BLOCKS ; 
 TYPE_5__* FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,int /*<<< orphan*/ ) ; 
 int EXT2_STATE_NEW ; 
 scalar_t__ FUNC4 (struct ext2_inode*) ; 
 int /*<<< orphan*/  NO_UID32 ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_head*) ; 
 scalar_t__ FUNC9 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC10 (struct buffer_head*) ; 
 void* FUNC11 (int /*<<< orphan*/ ) ; 
 void* FUNC12 (int) ; 
 struct ext2_inode* FUNC13 (struct super_block*,scalar_t__,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC14 (struct super_block*,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct inode*) ; 
 int /*<<< orphan*/  FUNC20 (struct inode*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC23 (struct ext2_inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC24 (int /*<<< orphan*/ ) ; 
 int FUNC25 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (char*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC31 (struct super_block*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC32(struct inode *inode, int do_sync)
{
	struct ext2_inode_info *ei = FUNC1(inode);
	struct super_block *sb = inode->i_sb;
	ino_t ino = inode->i_ino;
	uid_t uid = FUNC20(inode);
	gid_t gid = FUNC19(inode);
	struct buffer_head * bh;
	struct ext2_inode * raw_inode = FUNC13(sb, ino, &bh);
	int n;
	int err = 0;

	if (FUNC4(raw_inode))
 		return -EIO;

	/* For fields not not tracking in the in-memory inode,
	 * initialise them to zero for new inodes. */
	if (ei->i_state & EXT2_STATE_NEW)
		FUNC23(raw_inode, 0, FUNC2(sb)->s_inode_size);

	raw_inode->i_mode = FUNC11(inode->i_mode);
	if (!(FUNC31(sb, NO_UID32))) {
		raw_inode->i_uid_low = FUNC11(FUNC21(uid));
		raw_inode->i_gid_low = FUNC11(FUNC21(gid));
/*
 * Fix up interoperability with old kernels. Otherwise, old inodes get
 * re-used with the upper 16 bits of the uid/gid intact
 */
		if (!ei->i_dtime) {
			raw_inode->i_uid_high = FUNC11(FUNC18(uid));
			raw_inode->i_gid_high = FUNC11(FUNC18(gid));
		} else {
			raw_inode->i_uid_high = 0;
			raw_inode->i_gid_high = 0;
		}
	} else {
		raw_inode->i_uid_low = FUNC11(FUNC17(uid));
		raw_inode->i_gid_low = FUNC11(FUNC16(gid));
		raw_inode->i_uid_high = 0;
		raw_inode->i_gid_high = 0;
	}
	raw_inode->i_links_count = FUNC11(inode->i_nlink);
	raw_inode->i_size = FUNC12(inode->i_size);
	raw_inode->i_atime = FUNC12(inode->i_atime.tv_sec);
	raw_inode->i_ctime = FUNC12(inode->i_ctime.tv_sec);
	raw_inode->i_mtime = FUNC12(inode->i_mtime.tv_sec);

	raw_inode->i_blocks = FUNC12(inode->i_blocks);
	raw_inode->i_dtime = FUNC12(ei->i_dtime);
	raw_inode->i_flags = FUNC12(ei->i_flags);
	raw_inode->i_faddr = FUNC12(ei->i_faddr);
	raw_inode->i_frag = ei->i_frag_no;
	raw_inode->i_fsize = ei->i_frag_size;
	raw_inode->i_file_acl = FUNC12(ei->i_file_acl);
	if (!FUNC7(inode->i_mode))
		raw_inode->i_dir_acl = FUNC12(ei->i_dir_acl);
	else {
		raw_inode->i_size_high = FUNC12(inode->i_size >> 32);
		if (inode->i_size > 0x7fffffffULL) {
			if (!FUNC0(sb,
					EXT2_FEATURE_RO_COMPAT_LARGE_FILE) ||
			    FUNC2(sb)->s_es->s_rev_level ==
					FUNC12(EXT2_GOOD_OLD_REV)) {
			       /* If this is the first large file
				* created, add a flag to the superblock.
				*/
				FUNC28(&FUNC2(sb)->s_lock);
				FUNC15(sb);
				FUNC3(sb,
					EXT2_FEATURE_RO_COMPAT_LARGE_FILE);
				FUNC29(&FUNC2(sb)->s_lock);
				FUNC14(sb, FUNC2(sb)->s_es, 1);
			}
		}
	}
	
	raw_inode->i_generation = FUNC12(inode->i_generation);
	if (FUNC6(inode->i_mode) || FUNC5(inode->i_mode)) {
		if (FUNC26(inode->i_rdev)) {
			raw_inode->i_block[0] =
				FUNC12(FUNC25(inode->i_rdev));
			raw_inode->i_block[1] = 0;
		} else {
			raw_inode->i_block[0] = 0;
			raw_inode->i_block[1] =
				FUNC12(FUNC24(inode->i_rdev));
			raw_inode->i_block[2] = 0;
		}
	} else for (n = 0; n < EXT2_N_BLOCKS; n++)
		raw_inode->i_block[n] = ei->i_data[n];
	FUNC22(bh);
	if (do_sync) {
		FUNC30(bh);
		if (FUNC9(bh) && !FUNC10(bh)) {
			FUNC27 ("IO error syncing ext2 inode [%s:%08lx]\n",
				sb->s_id, (unsigned long) ino);
			err = -EIO;
		}
	}
	ei->i_state &= ~EXT2_STATE_NEW;
	FUNC8 (bh);
	return err;
}