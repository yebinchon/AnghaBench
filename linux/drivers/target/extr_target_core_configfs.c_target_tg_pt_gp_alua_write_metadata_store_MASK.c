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
struct t10_alua_tg_pt_gp {int tg_pt_gp_write_metadata; } ;
struct config_item {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (char const*,int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 struct t10_alua_tg_pt_gp* FUNC2 (struct config_item*) ; 

__attribute__((used)) static ssize_t FUNC3(
		struct config_item *item, const char *page, size_t count)
{
	struct t10_alua_tg_pt_gp *tg_pt_gp = FUNC2(item);
	unsigned long tmp;
	int ret;

	ret = FUNC0(page, 0, &tmp);
	if (ret < 0) {
		FUNC1("Unable to extract alua_write_metadata\n");
		return ret;
	}

	if ((tmp != 0) && (tmp != 1)) {
		FUNC1("Illegal value for alua_write_metadata:"
			" %lu\n", tmp);
		return -EINVAL;
	}
	tg_pt_gp->tg_pt_gp_write_metadata = (int)tmp;

	return count;
}