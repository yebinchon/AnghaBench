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
struct t10_alua_tg_pt_gp {int tg_pt_gp_alua_access_type; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int TPGS_EXPLICIT_ALUA ; 
 int TPGS_IMPLICIT_ALUA ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 

ssize_t FUNC1(
	struct t10_alua_tg_pt_gp *tg_pt_gp,
	char *page)
{
	if ((tg_pt_gp->tg_pt_gp_alua_access_type & TPGS_EXPLICIT_ALUA) &&
	    (tg_pt_gp->tg_pt_gp_alua_access_type & TPGS_IMPLICIT_ALUA))
		return FUNC0(page, "Implicit and Explicit\n");
	else if (tg_pt_gp->tg_pt_gp_alua_access_type & TPGS_IMPLICIT_ALUA)
		return FUNC0(page, "Implicit\n");
	else if (tg_pt_gp->tg_pt_gp_alua_access_type & TPGS_EXPLICIT_ALUA)
		return FUNC0(page, "Explicit\n");
	else
		return FUNC0(page, "None\n");
}