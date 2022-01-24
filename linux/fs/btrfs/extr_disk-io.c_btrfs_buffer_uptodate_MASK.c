#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct inode {int dummy; } ;
struct extent_buffer {TYPE_2__** pages; } ;
struct TYPE_6__ {int /*<<< orphan*/  io_tree; } ;
struct TYPE_5__ {TYPE_1__* mapping; } ;
struct TYPE_4__ {struct inode* host; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (struct inode*) ; 
 int EAGAIN ; 
 int FUNC1 (struct extent_buffer*) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct extent_buffer*,int /*<<< orphan*/ ,int) ; 

int FUNC3(struct extent_buffer *buf, u64 parent_transid,
			  int atomic)
{
	int ret;
	struct inode *btree_inode = buf->pages[0]->mapping->host;

	ret = FUNC1(buf);
	if (!ret)
		return ret;

	ret = FUNC2(&FUNC0(btree_inode)->io_tree, buf,
				    parent_transid, atomic);
	if (ret == -EAGAIN)
		return ret;
	return !ret;
}