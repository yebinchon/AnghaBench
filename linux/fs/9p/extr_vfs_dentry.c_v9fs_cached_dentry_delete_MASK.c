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
 int /*<<< orphan*/  P9_DEBUG_VFS ; 
 scalar_t__ FUNC0 (struct dentry const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct dentry const*,struct dentry const*) ; 

__attribute__((used)) static int FUNC2(const struct dentry *dentry)
{
	FUNC1(P9_DEBUG_VFS, " dentry: %pd (%p)\n",
		 dentry, dentry);

	/* Don't cache negative dentries */
	if (FUNC0(dentry))
		return 1;
	return 0;
}