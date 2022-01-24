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
struct inode {int /*<<< orphan*/  i_mode; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*,int) ; 
 struct dentry* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 

void FUNC5(struct inode *inode, int flag)
{
	struct dentry *alias_de;

	if ( !inode || !FUNC0(inode->i_mode)) 
		return; 

	alias_de = FUNC2(inode);
	if (!alias_de)
		return;
	FUNC1(alias_de, flag);
	FUNC4(alias_de);
	FUNC3(alias_de);
}