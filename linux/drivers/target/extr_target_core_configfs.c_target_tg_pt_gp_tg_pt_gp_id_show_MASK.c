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
struct t10_alua_tg_pt_gp {int /*<<< orphan*/  tg_pt_gp_id; int /*<<< orphan*/  tg_pt_gp_valid_id; } ;
struct config_item {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 
 struct t10_alua_tg_pt_gp* FUNC1 (struct config_item*) ; 

__attribute__((used)) static ssize_t FUNC2(struct config_item *item,
		char *page)
{
	struct t10_alua_tg_pt_gp *tg_pt_gp = FUNC1(item);

	if (!tg_pt_gp->tg_pt_gp_valid_id)
		return 0;
	return FUNC0(page, "%hu\n", tg_pt_gp->tg_pt_gp_id);
}