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
struct iattr {int ia_valid; int /*<<< orphan*/  ia_size; } ;
struct dentry {int dummy; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int ATTR_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 struct dentry* FUNC1 (struct dentry*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct dentry*,struct iattr*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct dentry*,struct iattr*,struct iattr*) ; 

int FUNC7(struct dentry *dentry, loff_t new_length)
{
	struct iattr ia = { .ia_valid = ATTR_SIZE, .ia_size = new_length };
	struct iattr lower_ia = { .ia_valid = 0 };
	int rc;

	rc = FUNC2(FUNC0(dentry), new_length);
	if (rc)
		return rc;

	rc = FUNC6(dentry, &ia, &lower_ia);
	if (!rc && lower_ia.ia_valid & ATTR_SIZE) {
		struct dentry *lower_dentry = FUNC1(dentry);

		FUNC3(FUNC0(lower_dentry));
		rc = FUNC5(lower_dentry, &lower_ia, NULL);
		FUNC4(FUNC0(lower_dentry));
	}
	return rc;
}