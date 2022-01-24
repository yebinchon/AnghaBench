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
struct se_lun {int lun_tg_pt_secondary_write_md; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (char const*,int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

ssize_t FUNC2(
	struct se_lun *lun,
	const char *page,
	size_t count)
{
	unsigned long tmp;
	int ret;

	ret = FUNC0(page, 0, &tmp);
	if (ret < 0) {
		FUNC1("Unable to extract alua_tg_pt_write_md\n");
		return ret;
	}
	if ((tmp != 0) && (tmp != 1)) {
		FUNC1("Illegal value for alua_tg_pt_write_md:"
				" %lu\n", tmp);
		return -EINVAL;
	}
	lun->lun_tg_pt_secondary_write_md = (int)tmp;

	return count;
}