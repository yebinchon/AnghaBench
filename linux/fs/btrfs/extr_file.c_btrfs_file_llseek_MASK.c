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
struct inode {TYPE_2__* i_sb; } ;
struct file {TYPE_1__* f_mapping; } ;
typedef  int loff_t ;
struct TYPE_4__ {int /*<<< orphan*/  s_maxbytes; } ;
struct TYPE_3__ {struct inode* host; } ;

/* Variables and functions */
 int ENXIO ; 
#define  SEEK_CUR 131 
#define  SEEK_DATA 130 
#define  SEEK_END 129 
#define  SEEK_HOLE 128 
 int FUNC0 (struct inode*,int*,int) ; 
 int FUNC1 (struct file*,int,int) ; 
 int FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int FUNC5 (struct file*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static loff_t FUNC6(struct file *file, loff_t offset, int whence)
{
	struct inode *inode = file->f_mapping->host;
	int ret;

	FUNC3(inode);
	switch (whence) {
	case SEEK_END:
	case SEEK_CUR:
		offset = FUNC1(file, offset, whence);
		goto out;
	case SEEK_DATA:
	case SEEK_HOLE:
		if (offset >= FUNC2(inode)) {
			FUNC4(inode);
			return -ENXIO;
		}

		ret = FUNC0(inode, &offset, whence);
		if (ret) {
			FUNC4(inode);
			return ret;
		}
	}

	offset = FUNC5(file, offset, inode->i_sb->s_maxbytes);
out:
	FUNC4(inode);
	return offset;
}