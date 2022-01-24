#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct page {int dummy; } ;
struct list_head {int dummy; } ;
struct address_space {int dummy; } ;
struct TYPE_2__ {int (* compress_pages ) (struct list_head*,struct address_space*,int /*<<< orphan*/ ,struct page**,unsigned long*,unsigned long*,unsigned long*) ;} ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 TYPE_1__** btrfs_compress_op ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (unsigned int) ; 
 struct list_head* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,struct list_head*) ; 
 int FUNC5 (struct list_head*,struct address_space*,int /*<<< orphan*/ ,struct page**,unsigned long*,unsigned long*,unsigned long*) ; 

int FUNC6(unsigned int type_level, struct address_space *mapping,
			 u64 start, struct page **pages,
			 unsigned long *out_pages,
			 unsigned long *total_in,
			 unsigned long *total_out)
{
	int type = FUNC2(type_level);
	int level = FUNC0(type_level);
	struct list_head *workspace;
	int ret;

	level = FUNC1(type, level);
	workspace = FUNC3(type, level);
	ret = btrfs_compress_op[type]->compress_pages(workspace, mapping,
						      start, pages,
						      out_pages,
						      total_in, total_out);
	FUNC4(type, workspace);
	return ret;
}