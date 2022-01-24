#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u16 ;
struct page {int dummy; } ;
struct compressed_bio {unsigned long nr_pages; int /*<<< orphan*/  mirror_num; struct page** compressed_pages; int /*<<< orphan*/ * sums; } ;
struct btrfs_inode {int flags; TYPE_1__* root; } ;
struct btrfs_fs_info {int /*<<< orphan*/  csum_shash; int /*<<< orphan*/  super_copy; } ;
struct TYPE_8__ {int /*<<< orphan*/  tfm; } ;
struct TYPE_7__ {struct btrfs_fs_info* fs_info; } ;

/* Variables and functions */
 int BTRFS_CSUM_SIZE ; 
 int BTRFS_INODE_NODATASUM ; 
 int EIO ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 char* FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/  const) ; 
 TYPE_2__* shash ; 

__attribute__((used)) static int FUNC9(struct btrfs_inode *inode,
				 struct compressed_bio *cb,
				 u64 disk_start)
{
	struct btrfs_fs_info *fs_info = inode->root->fs_info;
	FUNC0(shash, fs_info->csum_shash);
	const u16 csum_size = FUNC2(fs_info->super_copy);
	int ret;
	struct page *page;
	unsigned long i;
	char *kaddr;
	u8 csum[BTRFS_CSUM_SIZE];
	u8 *cb_sum = cb->sums;

	if (inode->flags & BTRFS_INODE_NODATASUM)
		return 0;

	shash->tfm = fs_info->csum_shash;

	for (i = 0; i < cb->nr_pages; i++) {
		page = cb->compressed_pages[i];

		FUNC4(shash);
		kaddr = FUNC6(page);
		FUNC5(shash, kaddr, PAGE_SIZE);
		FUNC7(kaddr);
		FUNC3(shash, (u8 *)&csum);

		if (FUNC8(&csum, cb_sum, csum_size)) {
			FUNC1(inode, disk_start,
					csum, cb_sum, cb->mirror_num);
			ret = -EIO;
			goto fail;
		}
		cb_sum += csum_size;

	}
	ret = 0;
fail:
	return ret;
}