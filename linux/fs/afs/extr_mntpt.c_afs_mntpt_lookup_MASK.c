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
struct inode {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EREMOTE ; 
 struct dentry* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct inode*,struct dentry*,struct dentry*) ; 

__attribute__((used)) static struct dentry *FUNC2(struct inode *dir,
				       struct dentry *dentry,
				       unsigned int flags)
{
	FUNC1("%p,%p{%pd2}", dir, dentry, dentry);
	return FUNC0(-EREMOTE);
}