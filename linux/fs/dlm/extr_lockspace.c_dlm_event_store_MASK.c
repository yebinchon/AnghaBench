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
struct dlm_ls {int /*<<< orphan*/  ls_uevent_wait; int /*<<< orphan*/  ls_flags; int /*<<< orphan*/  ls_uevent_result; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  LSFL_UEVENT_WAIT ; 
 int FUNC0 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC3(struct dlm_ls *ls, const char *buf, size_t len)
{
	int rc = FUNC0(buf, 0, &ls->ls_uevent_result);

	if (rc)
		return rc;
	FUNC1(LSFL_UEVENT_WAIT, &ls->ls_flags);
	FUNC2(&ls->ls_uevent_wait);
	return len;
}