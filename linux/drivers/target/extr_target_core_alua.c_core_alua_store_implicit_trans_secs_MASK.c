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
struct t10_alua_tg_pt_gp {int tg_pt_gp_implicit_trans_secs; } ;
typedef  int ssize_t ;

/* Variables and functions */
 unsigned long ALUA_MAX_IMPLICIT_TRANS_SECS ; 
 int EINVAL ; 
 int FUNC0 (char const*,int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

ssize_t FUNC2(
	struct t10_alua_tg_pt_gp *tg_pt_gp,
	const char *page,
	size_t count)
{
	unsigned long tmp;
	int ret;

	ret = FUNC0(page, 0, &tmp);
	if (ret < 0) {
		FUNC1("Unable to extract implicit_trans_secs\n");
		return ret;
	}
	if (tmp > ALUA_MAX_IMPLICIT_TRANS_SECS) {
		FUNC1("Passed implicit_trans_secs: %lu, exceeds"
			" ALUA_MAX_IMPLICIT_TRANS_SECS: %d\n", tmp,
			ALUA_MAX_IMPLICIT_TRANS_SECS);
		return  -EINVAL;
	}
	tg_pt_gp->tg_pt_gp_implicit_trans_secs = (int)tmp;

	return count;
}