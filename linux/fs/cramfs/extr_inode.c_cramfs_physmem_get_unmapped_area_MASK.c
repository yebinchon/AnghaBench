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
struct inode {unsigned long i_size; struct super_block* i_sb; } ;
struct file {int dummy; } ;
struct cramfs_sb_info {unsigned int linear_phys_addr; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;
struct TYPE_4__ {TYPE_1__ d_name; } ;

/* Variables and functions */
 struct cramfs_sb_info* FUNC0 (struct super_block*) ; 
 unsigned long EINVAL ; 
 unsigned long ENOSYS ; 
 unsigned long PAGE_SHIFT ; 
 unsigned long PAGE_SIZE ; 
 unsigned int FUNC1 (struct inode*,unsigned long,unsigned int*) ; 
 TYPE_2__* FUNC2 (struct file*) ; 
 struct inode* FUNC3 (struct file*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,unsigned long,unsigned long,unsigned long) ; 

__attribute__((used)) static unsigned long FUNC5(struct file *file,
			unsigned long addr, unsigned long len,
			unsigned long pgoff, unsigned long flags)
{
	struct inode *inode = FUNC3(file);
	struct super_block *sb = inode->i_sb;
	struct cramfs_sb_info *sbi = FUNC0(sb);
	unsigned int pages, block_pages, max_pages, offset;

	pages = (len + PAGE_SIZE - 1) >> PAGE_SHIFT;
	max_pages = (inode->i_size + PAGE_SIZE - 1) >> PAGE_SHIFT;
	if (pgoff >= max_pages || pages > max_pages - pgoff)
		return -EINVAL;
	block_pages = pages;
	offset = FUNC1(inode, pgoff, &block_pages);
	if (!offset || block_pages != pages)
		return -ENOSYS;
	addr = sbi->linear_phys_addr + offset;
	FUNC4("get_unmapped for %s ofs %#lx siz %lu at 0x%08lx\n",
		 FUNC2(file)->d_name.name, pgoff*PAGE_SIZE, len, addr);
	return addr;
}