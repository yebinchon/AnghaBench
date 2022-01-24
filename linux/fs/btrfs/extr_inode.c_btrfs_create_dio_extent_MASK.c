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
typedef  scalar_t__ u64 ;
struct inode {int dummy; } ;
struct extent_map {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_COMPRESS_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int const BTRFS_ORDERED_NOCOW ; 
 struct extent_map* FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct extent_map*) ; 
 int FUNC3 (struct inode*,scalar_t__ const,scalar_t__ const,scalar_t__ const,scalar_t__ const,int const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__ const,scalar_t__ const,int /*<<< orphan*/ ) ; 
 struct extent_map* FUNC5 (struct inode*,scalar_t__ const,scalar_t__ const,scalar_t__ const,scalar_t__ const,scalar_t__ const,scalar_t__ const,scalar_t__ const,int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC6 (struct extent_map*) ; 

__attribute__((used)) static struct extent_map *FUNC7(struct inode *inode,
						  const u64 start,
						  const u64 len,
						  const u64 orig_start,
						  const u64 block_start,
						  const u64 block_len,
						  const u64 orig_block_len,
						  const u64 ram_bytes,
						  const int type)
{
	struct extent_map *em = NULL;
	int ret;

	if (type != BTRFS_ORDERED_NOCOW) {
		em = FUNC5(inode, start, len, orig_start,
				  block_start, block_len, orig_block_len,
				  ram_bytes,
				  BTRFS_COMPRESS_NONE, /* compress_type */
				  type);
		if (FUNC2(em))
			goto out;
	}
	ret = FUNC3(inode, start, block_start,
					   len, block_len, type);
	if (ret) {
		if (em) {
			FUNC6(em);
			FUNC4(FUNC0(inode), start,
						start + len - 1, 0);
		}
		em = FUNC1(ret);
	}
 out:

	return em;
}