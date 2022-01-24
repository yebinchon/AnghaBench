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
typedef  scalar_t__ u16 ;
struct super_block {int dummy; } ;
struct file_dentry_t {int /*<<< orphan*/  checksum; scalar_t__ num_ext; } ;
struct dentry_t {int dummy; } ;
struct chain_t {int dummy; } ;
typedef  int /*<<< orphan*/  sector_t ;
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  CS_DEFAULT ; 
 int /*<<< orphan*/  CS_DIR_ENTRY ; 
 int /*<<< orphan*/  DENTRY_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (void*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 struct dentry_t* FUNC5 (struct super_block*,struct chain_t*,int,int /*<<< orphan*/ *) ; 

void FUNC6(struct super_block *sb, struct chain_t *p_dir,
			 s32 entry)
{
	int i, num_entries;
	sector_t sector;
	u16 chksum;
	struct file_dentry_t *file_ep;
	struct dentry_t *ep;

	file_ep = (struct file_dentry_t *)FUNC5(sb, p_dir, entry,
							   &sector);
	if (!file_ep)
		return;

	FUNC1(sb, sector);

	num_entries = (s32)file_ep->num_ext + 1;
	chksum = FUNC4((void *)file_ep, DENTRY_SIZE, 0,
				     CS_DIR_ENTRY);

	for (i = 1; i < num_entries; i++) {
		ep = FUNC5(sb, p_dir, entry + i, NULL);
		if (!ep) {
			FUNC3(sb, sector);
			return;
		}

		chksum = FUNC4((void *)ep, DENTRY_SIZE, chksum,
					     CS_DEFAULT);
	}

	FUNC0(file_ep->checksum, chksum);
	FUNC2(sb, sector);
	FUNC3(sb, sector);
}