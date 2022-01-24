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
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  I_MUTEX_PARENT ; 
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 struct dentry* FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct dentry *FUNC3(struct dentry *dentry)
{
	struct dentry *dir;

	dir = FUNC1(dentry);
	FUNC2(FUNC0(dir), I_MUTEX_PARENT);
	return dir;
}