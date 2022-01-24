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
struct inode {int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ctime; struct address_space* i_mapping; } ;
struct address_space {int dummy; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int FUNC2 (struct address_space*,scalar_t__,scalar_t__) ; 
 int FUNC3 (struct address_space*,scalar_t__,scalar_t__) ; 
 int FUNC4 (struct inode*,scalar_t__) ; 
 scalar_t__ FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int FUNC7 (struct address_space*) ; 
 int FUNC8 (struct inode*,int) ; 

__attribute__((used)) static int FUNC9(struct inode *inode, loff_t size)
{
	struct address_space *mapping = inode->i_mapping;
	loff_t start = FUNC5(inode), count = size - FUNC5(inode);
	int err, err2;

	err = FUNC4(inode, size);
	if (err != 0)
		return err;

	inode->i_ctime = inode->i_mtime = FUNC1(inode);
	FUNC6(inode);

	if (FUNC0(inode)) {
		err = FUNC3(mapping, start,
					       start + count - 1);
		err2 = FUNC7(mapping);
		err = (err) ? (err) : (err2);
		err2 = FUNC8(inode, 1);
		err = (err) ? (err) : (err2);
		if (!err)
			err =  FUNC2(mapping, start,
						       start + count - 1);
	}
	return err;
}