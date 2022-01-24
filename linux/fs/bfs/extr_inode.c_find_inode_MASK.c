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
typedef  int u16 ;
struct super_block {char* s_id; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct bfs_inode {int dummy; } ;
struct TYPE_2__ {int si_lasti; } ;

/* Variables and functions */
 int BFS_INODES_PER_BLOCK ; 
 int BFS_ROOT_INO ; 
 TYPE_1__* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  EIO ; 
 struct bfs_inode* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 struct buffer_head* FUNC3 (struct super_block*,int) ; 

__attribute__((used)) static struct bfs_inode *FUNC4(struct super_block *sb, u16 ino, struct buffer_head **p)
{
	if ((ino < BFS_ROOT_INO) || (ino > FUNC0(sb)->si_lasti)) {
		FUNC2("Bad inode number %s:%08x\n", sb->s_id, ino);
		return FUNC1(-EIO);
	}

	ino -= BFS_ROOT_INO;

	*p = FUNC3(sb, 1 + ino / BFS_INODES_PER_BLOCK);
	if (!*p) {
		FUNC2("Unable to read inode %s:%08x\n", sb->s_id, ino);
		return FUNC1(-EIO);
	}

	return (struct bfs_inode *)(*p)->b_data +  ino % BFS_INODES_PER_BLOCK;
}