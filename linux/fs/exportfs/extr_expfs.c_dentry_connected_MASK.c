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
struct dentry {int d_flags; } ;

/* Variables and functions */
 int DCACHE_DISCONNECTED ; 
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 struct dentry* FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 

__attribute__((used)) static bool FUNC3(struct dentry *dentry)
{
	FUNC0(dentry);
	while (dentry->d_flags & DCACHE_DISCONNECTED) {
		struct dentry *parent = FUNC1(dentry);

		FUNC2(dentry);
		if (dentry == parent) {
			FUNC2(parent);
			return false;
		}
		dentry = parent;
	}
	FUNC2(dentry);
	return true;
}