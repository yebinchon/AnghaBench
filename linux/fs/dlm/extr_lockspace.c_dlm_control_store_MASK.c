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
struct dlm_ls {int /*<<< orphan*/  ls_local_handle; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 struct dlm_ls* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_ls*) ; 
 int /*<<< orphan*/  FUNC2 (struct dlm_ls*) ; 
 int /*<<< orphan*/  FUNC3 (struct dlm_ls*) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static ssize_t FUNC5(struct dlm_ls *ls, const char *buf, size_t len)
{
	ssize_t ret = len;
	int n;
	int rc = FUNC4(buf, 0, &n);

	if (rc)
		return rc;
	ls = FUNC0(ls->ls_local_handle);
	if (!ls)
		return -EINVAL;

	switch (n) {
	case 0:
		FUNC2(ls);
		break;
	case 1:
		FUNC1(ls);
		break;
	default:
		ret = -EINVAL;
	}
	FUNC3(ls);
	return ret;
}