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
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 scalar_t__ FUNC3 (struct dentry*) ; 
 scalar_t__ FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct dentry*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct dentry*) ; 
 scalar_t__ FUNC9 (struct dentry*) ; 
 int FUNC10 (int /*<<< orphan*/ ,struct dentry*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct dentry*) ; 

__attribute__((used)) static int FUNC12(struct dentry *dentry, struct dentry *parent)
{
	int ret = 0;

	if (FUNC9(dentry)) {
		FUNC5(dentry);
		if (FUNC3(dentry)) {
			ret = FUNC10(FUNC2(parent), dentry);
			if (!ret)
				FUNC7(FUNC2(parent), dentry);
		} else {
			FUNC11(FUNC2(parent), dentry);
			FUNC8(FUNC2(parent), dentry);
		}
		if (!ret)
			FUNC1(dentry);
		if (FUNC4(dentry))
			FUNC0(dentry);
		FUNC6(dentry);
	}
	return ret;
}