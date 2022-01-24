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
struct t10_alua_lu_gp {int lu_gp_valid_id; scalar_t__ lu_gp_id; int /*<<< orphan*/  lu_gp_ref_cnt; int /*<<< orphan*/  lu_gp_lock; int /*<<< orphan*/  lu_gp_mem_list; int /*<<< orphan*/  lu_gp_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct t10_alua_lu_gp* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  alua_lu_gps_count ; 
 int /*<<< orphan*/  alua_lu_gps_counter ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct t10_alua_lu_gp* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  t10_alua_lu_gp_cache ; 

struct t10_alua_lu_gp *
FUNC6(const char *name, int def_group)
{
	struct t10_alua_lu_gp *lu_gp;

	lu_gp = FUNC3(t10_alua_lu_gp_cache, GFP_KERNEL);
	if (!lu_gp) {
		FUNC4("Unable to allocate struct t10_alua_lu_gp\n");
		return FUNC0(-ENOMEM);
	}
	FUNC1(&lu_gp->lu_gp_node);
	FUNC1(&lu_gp->lu_gp_mem_list);
	FUNC5(&lu_gp->lu_gp_lock);
	FUNC2(&lu_gp->lu_gp_ref_cnt, 0);

	if (def_group) {
		lu_gp->lu_gp_id = alua_lu_gps_counter++;
		lu_gp->lu_gp_valid_id = 1;
		alua_lu_gps_count++;
	}

	return lu_gp;
}