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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct super_block {int dummy; } ;
struct dos_dentry_t {int dummy; } ;
struct chain_t {int dummy; } ;
typedef  int /*<<< orphan*/  sector_t ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FFS_MEDIAERR ; 
 int /*<<< orphan*/  FFS_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct super_block*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct super_block*,struct chain_t*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct dos_dentry_t*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

s32 FUNC3(struct super_block *sb, struct chain_t *p_dir, s32 entry,
		       u32 type, u32 start_clu, u64 size)
{
	sector_t sector;
	struct dos_dentry_t *dos_ep;

	dos_ep = (struct dos_dentry_t *)FUNC1(sb, p_dir, entry,
							 &sector);
	if (!dos_ep)
		return FFS_MEDIAERR;

	FUNC2(dos_ep, type, start_clu);
	FUNC0(sb, sector);

	return FFS_SUCCESS;
}