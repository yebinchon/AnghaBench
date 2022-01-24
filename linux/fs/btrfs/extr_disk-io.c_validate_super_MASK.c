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
typedef  int u64 ;
struct TYPE_4__ {int fsid; } ;
struct btrfs_super_block {TYPE_2__ dev_item; int /*<<< orphan*/  __unused_leafsize; } ;
struct btrfs_fs_info {TYPE_1__* fs_devices; } ;
struct btrfs_disk_key {int dummy; } ;
struct btrfs_chunk {int dummy; } ;
struct TYPE_3__ {int metadata_uuid; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_FSID_SIZE ; 
 scalar_t__ BTRFS_MAGIC ; 
 int BTRFS_MAX_LEVEL ; 
 int BTRFS_MAX_METADATA_BLOCKSIZE ; 
 int BTRFS_SUPER_FLAG_SUPP ; 
 int BTRFS_SUPER_INFO_OFFSET ; 
 int BTRFS_SYSTEM_CHUNK_ARRAY_SIZE ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_fs_info*,char*,...) ; 
 int FUNC2 (int) ; 
 int FUNC3 (struct btrfs_super_block*) ; 
 int FUNC4 (struct btrfs_super_block*) ; 
 int FUNC5 (struct btrfs_super_block*) ; 
 int /*<<< orphan*/  FUNC6 (struct btrfs_super_block*) ; 
 int FUNC7 (struct btrfs_super_block*) ; 
 int FUNC8 (struct btrfs_super_block*) ; 
 int FUNC9 (struct btrfs_super_block*) ; 
 int FUNC10 (struct btrfs_super_block*) ; 
 int /*<<< orphan*/  FUNC11 (struct btrfs_super_block*) ; 
 int FUNC12 (struct btrfs_super_block*) ; 
 scalar_t__ FUNC13 (struct btrfs_super_block*) ; 
 int FUNC14 (struct btrfs_super_block*) ; 
 unsigned long FUNC15 (struct btrfs_super_block*) ; 
 int /*<<< orphan*/  FUNC16 (struct btrfs_super_block*) ; 
 int FUNC17 (struct btrfs_super_block*) ; 
 int FUNC18 (struct btrfs_super_block*) ; 
 int FUNC19 (struct btrfs_super_block*) ; 
 int FUNC20 (struct btrfs_super_block*) ; 
 int /*<<< orphan*/  FUNC21 (struct btrfs_fs_info*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC22 (int) ; 
 int FUNC23 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC24 (int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC25(struct btrfs_fs_info *fs_info,
			    struct btrfs_super_block *sb, int mirror_num)
{
	u64 nodesize = FUNC14(sb);
	u64 sectorsize = FUNC18(sb);
	int ret = 0;

	if (FUNC13(sb) != BTRFS_MAGIC) {
		FUNC1(fs_info, "no valid FS found");
		ret = -EINVAL;
	}
	if (FUNC9(sb) & ~BTRFS_SUPER_FLAG_SUPP) {
		FUNC1(fs_info, "unrecognized or unsupported super flag: %llu",
				FUNC9(sb) & ~BTRFS_SUPER_FLAG_SUPP);
		ret = -EINVAL;
	}
	if (FUNC17(sb) >= BTRFS_MAX_LEVEL) {
		FUNC1(fs_info, "tree_root level too big: %d >= %d",
				FUNC17(sb), BTRFS_MAX_LEVEL);
		ret = -EINVAL;
	}
	if (FUNC8(sb) >= BTRFS_MAX_LEVEL) {
		FUNC1(fs_info, "chunk_root level too big: %d >= %d",
				FUNC8(sb), BTRFS_MAX_LEVEL);
		ret = -EINVAL;
	}
	if (FUNC12(sb) >= BTRFS_MAX_LEVEL) {
		FUNC1(fs_info, "log_root level too big: %d >= %d",
				FUNC12(sb), BTRFS_MAX_LEVEL);
		ret = -EINVAL;
	}

	/*
	 * Check sectorsize and nodesize first, other check will need it.
	 * Check all possible sectorsize(4K, 8K, 16K, 32K, 64K) here.
	 */
	if (!FUNC22(sectorsize) || sectorsize < 4096 ||
	    sectorsize > BTRFS_MAX_METADATA_BLOCKSIZE) {
		FUNC1(fs_info, "invalid sectorsize %llu", sectorsize);
		ret = -EINVAL;
	}
	/* Only PAGE SIZE is supported yet */
	if (sectorsize != PAGE_SIZE) {
		FUNC1(fs_info,
			"sectorsize %llu not supported yet, only support %lu",
			sectorsize, PAGE_SIZE);
		ret = -EINVAL;
	}
	if (!FUNC22(nodesize) || nodesize < sectorsize ||
	    nodesize > BTRFS_MAX_METADATA_BLOCKSIZE) {
		FUNC1(fs_info, "invalid nodesize %llu", nodesize);
		ret = -EINVAL;
	}
	if (nodesize != FUNC23(sb->__unused_leafsize)) {
		FUNC1(fs_info, "invalid leafsize %u, should be %llu",
			  FUNC23(sb->__unused_leafsize), nodesize);
		ret = -EINVAL;
	}

	/* Root alignment check */
	if (!FUNC0(FUNC16(sb), sectorsize)) {
		FUNC21(fs_info, "tree_root block unaligned: %llu",
			   FUNC16(sb));
		ret = -EINVAL;
	}
	if (!FUNC0(FUNC6(sb), sectorsize)) {
		FUNC21(fs_info, "chunk_root block unaligned: %llu",
			   FUNC6(sb));
		ret = -EINVAL;
	}
	if (!FUNC0(FUNC11(sb), sectorsize)) {
		FUNC21(fs_info, "log_root block unaligned: %llu",
			   FUNC11(sb));
		ret = -EINVAL;
	}

	if (FUNC24(fs_info->fs_devices->metadata_uuid, sb->dev_item.fsid,
		   BTRFS_FSID_SIZE) != 0) {
		FUNC1(fs_info,
			"dev_item UUID does not match metadata fsid: %pU != %pU",
			fs_info->fs_devices->metadata_uuid, sb->dev_item.fsid);
		ret = -EINVAL;
	}

	/*
	 * Hint to catch really bogus numbers, bitflips or so, more exact checks are
	 * done later
	 */
	if (FUNC4(sb) < 6 * FUNC14(sb)) {
		FUNC1(fs_info, "bytes_used is too small %llu",
			  FUNC4(sb));
		ret = -EINVAL;
	}
	if (!FUNC22(FUNC19(sb))) {
		FUNC1(fs_info, "invalid stripesize %u",
			  FUNC19(sb));
		ret = -EINVAL;
	}
	if (FUNC15(sb) > (1UL << 31))
		FUNC21(fs_info, "suspicious number of devices: %llu",
			   FUNC15(sb));
	if (FUNC15(sb) == 0) {
		FUNC1(fs_info, "number of devices is 0");
		ret = -EINVAL;
	}

	if (mirror_num >= 0 &&
	    FUNC3(sb) != FUNC2(mirror_num)) {
		FUNC1(fs_info, "super offset mismatch %llu != %u",
			  FUNC3(sb), BTRFS_SUPER_INFO_OFFSET);
		ret = -EINVAL;
	}

	/*
	 * Obvious sys_chunk_array corruptions, it must hold at least one key
	 * and one chunk
	 */
	if (FUNC20(sb) > BTRFS_SYSTEM_CHUNK_ARRAY_SIZE) {
		FUNC1(fs_info, "system chunk array too big %u > %u",
			  FUNC20(sb),
			  BTRFS_SYSTEM_CHUNK_ARRAY_SIZE);
		ret = -EINVAL;
	}
	if (FUNC20(sb) < sizeof(struct btrfs_disk_key)
			+ sizeof(struct btrfs_chunk)) {
		FUNC1(fs_info, "system chunk array too small %u < %zu",
			  FUNC20(sb),
			  sizeof(struct btrfs_disk_key)
			  + sizeof(struct btrfs_chunk));
		ret = -EINVAL;
	}

	/*
	 * The generation is a global counter, we'll trust it more than the others
	 * but it's still possible that it's the one that's wrong.
	 */
	if (FUNC10(sb) < FUNC7(sb))
		FUNC21(fs_info,
			"suspicious: generation < chunk_root_generation: %llu < %llu",
			FUNC10(sb),
			FUNC7(sb));
	if (FUNC10(sb) < FUNC5(sb)
	    && FUNC5(sb) != (u64)-1)
		FUNC21(fs_info,
			"suspicious: generation < cache_generation: %llu < %llu",
			FUNC10(sb),
			FUNC5(sb));

	return ret;
}