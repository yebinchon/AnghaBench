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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct TYPE_2__ {char* name; int len; } ;
struct dentry {TYPE_1__ d_name; } ;

/* Variables and functions */
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 struct inode* FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 scalar_t__ FUNC8 (struct inode*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static int FUNC10(struct dentry *source_de, struct inode *dir_inode, 
	  struct dentry *de)
{
	struct inode *inode = FUNC4(source_de);
        const char * name = de->d_name.name;
	int len = de->d_name.len;
	int error;

	if (FUNC8(dir_inode) && FUNC2(name, len))
		return -EPERM;

	error = FUNC9(dir_inode->i_sb, FUNC1(inode),
			   FUNC1(dir_inode), (const char *)name, len);
	if (error) {
		FUNC3(de);
		return error;
	}

	FUNC0(dir_inode);
	FUNC6(inode);
	FUNC5(de, inode);
	FUNC7(inode);
	return 0;
}