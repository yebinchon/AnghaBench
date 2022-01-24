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
struct delayed_call {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECHILD ; 
 char const* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 struct dentry* FUNC3 (struct dentry*) ; 
 char* FUNC4 (struct dentry*,size_t*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kfree_link ; 
 int /*<<< orphan*/  FUNC6 (struct delayed_call*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static const char *FUNC7(struct dentry *dentry,
				     struct inode *inode,
				     struct delayed_call *done)
{
	size_t len;
	char *buf;

	if (!dentry)
		return FUNC0(-ECHILD);

	buf = FUNC4(dentry, &len);
	if (FUNC1(buf))
		return buf;
	FUNC5(FUNC2(dentry),
				FUNC2(FUNC3(dentry)));
	buf[len] = '\0';
	FUNC6(done, kfree_link, buf);
	return buf;
}