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
struct qstr {unsigned char* name; int len; } ;
struct inode {unsigned long i_size; int /*<<< orphan*/  i_sb; } ;
struct buffer_head {unsigned long b_size; scalar_t__ b_data; } ;
struct bfs_dirent {int /*<<< orphan*/  name; int /*<<< orphan*/  ino; } ;
struct TYPE_2__ {scalar_t__ i_sblock; } ;

/* Variables and functions */
 unsigned long BFS_BSIZE ; 
 scalar_t__ BFS_DIRENT_SIZE ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int BFS_NAMELEN ; 
 scalar_t__ FUNC1 (int,unsigned char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct buffer_head* FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static struct buffer_head *FUNC5(struct inode *dir,
			const struct qstr *child,
			struct bfs_dirent **res_dir)
{
	unsigned long block = 0, offset = 0;
	struct buffer_head *bh = NULL;
	struct bfs_dirent *de;
	const unsigned char *name = child->name;
	int namelen = child->len;

	*res_dir = NULL;
	if (namelen > BFS_NAMELEN)
		return NULL;

	while (block * BFS_BSIZE + offset < dir->i_size) {
		if (!bh) {
			bh = FUNC4(dir->i_sb, FUNC0(dir)->i_sblock + block);
			if (!bh) {
				block++;
				continue;
			}
		}
		de = (struct bfs_dirent *)(bh->b_data + offset);
		offset += BFS_DIRENT_SIZE;
		if (FUNC3(de->ino) &&
				FUNC1(namelen, name, de->name)) {
			*res_dir = de;
			return bh;
		}
		if (offset < bh->b_size)
			continue;
		FUNC2(bh);
		bh = NULL;
		offset = 0;
		block++;
	}
	FUNC2(bh);
	return NULL;
}