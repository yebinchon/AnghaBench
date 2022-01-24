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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct uni_name_t {int /*<<< orphan*/  name_hash; int /*<<< orphan*/  name_len; int /*<<< orphan*/ * name; } ;
struct super_block {int dummy; } ;
struct strm_dentry_t {int /*<<< orphan*/  name_hash; int /*<<< orphan*/  name_len; } ;
struct name_dentry_t {int dummy; } ;
struct file_dentry_t {scalar_t__ num_ext; } ;
struct dos_name_t {int dummy; } ;
struct chain_t {int dummy; } ;
typedef  int /*<<< orphan*/  sector_t ;
typedef  int s32 ;

/* Variables and functions */
 int FFS_MEDIAERR ; 
 int FFS_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct super_block*,struct chain_t*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct name_dentry_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*,struct chain_t*,int) ; 

__attribute__((used)) static s32 FUNC5(struct super_block *sb, struct chain_t *p_dir,
				s32 entry, s32 num_entries,
				struct uni_name_t *p_uniname,
				struct dos_name_t *p_dosname)
{
	int i;
	sector_t sector;
	u16 *uniname = p_uniname->name;
	struct file_dentry_t *file_ep;
	struct strm_dentry_t *strm_ep;
	struct name_dentry_t *name_ep;

	file_ep = (struct file_dentry_t *)FUNC2(sb, p_dir, entry,
							   &sector);
	if (!file_ep)
		return FFS_MEDIAERR;

	file_ep->num_ext = (u8)(num_entries - 1);
	FUNC1(sb, sector);

	strm_ep = (struct strm_dentry_t *)FUNC2(sb, p_dir, entry + 1,
							   &sector);
	if (!strm_ep)
		return FFS_MEDIAERR;

	strm_ep->name_len = p_uniname->name_len;
	FUNC0(strm_ep->name_hash, p_uniname->name_hash);
	FUNC1(sb, sector);

	for (i = 2; i < num_entries; i++) {
		name_ep = (struct name_dentry_t *)FUNC2(sb, p_dir,
								   entry + i,
								   &sector);
		if (!name_ep)
			return FFS_MEDIAERR;

		FUNC3(name_ep, uniname);
		FUNC1(sb, sector);
		uniname += 15;
	}

	FUNC4(sb, p_dir, entry);

	return FFS_SUCCESS;
}