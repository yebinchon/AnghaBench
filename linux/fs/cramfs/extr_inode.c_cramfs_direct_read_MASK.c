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
struct super_block {int dummy; } ;
struct cramfs_sb_info {unsigned int size; void* linear_virt_addr; } ;

/* Variables and functions */
 struct cramfs_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC3(struct super_block *sb, unsigned int offset,
				unsigned int len)
{
	struct cramfs_sb_info *sbi = FUNC0(sb);

	if (!len)
		return NULL;
	if (len > sbi->size || offset > sbi->size - len)
		return FUNC2(FUNC1(0));
	return sbi->linear_virt_addr + offset;
}