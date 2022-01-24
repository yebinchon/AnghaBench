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
struct dlm_rsb {int res_master_nodeid; int res_nodeid; } ;

/* Variables and functions */
 int FUNC0 (struct dlm_rsb*) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct dlm_rsb*) ; 
 int /*<<< orphan*/  FUNC3 (struct dlm_rsb*) ; 

__attribute__((used)) static int FUNC4(struct dlm_rsb *r, unsigned int *count)
{
	int dir_nodeid = FUNC0(r);
	int new_master = dir_nodeid;

	if (dir_nodeid == FUNC1())
		new_master = 0;

	FUNC2(r);
	r->res_master_nodeid = dir_nodeid;
	r->res_nodeid = new_master;
	FUNC3(r);
	(*count)++;
	return 0;
}