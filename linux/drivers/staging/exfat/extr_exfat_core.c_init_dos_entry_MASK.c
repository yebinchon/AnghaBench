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
typedef  int u32 ;
struct timestamp_t {int dummy; } ;
struct dos_dentry_t {scalar_t__ create_time_ms; int /*<<< orphan*/  access_date; int /*<<< orphan*/  size; int /*<<< orphan*/  start_clu_hi; int /*<<< orphan*/  start_clu_lo; } ;
struct dentry_t {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TM_CREATE ; 
 int /*<<< orphan*/  TM_MODIFY ; 
 int /*<<< orphan*/  FUNC3 (struct dentry_t*,struct timestamp_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry_t*,int) ; 
 struct timestamp_t* FUNC5 (struct timestamp_t*) ; 

void FUNC6(struct dos_dentry_t *ep, u32 type, u32 start_clu)
{
	struct timestamp_t tm, *tp;

	FUNC4((struct dentry_t *)ep, type);
	FUNC1(ep->start_clu_lo, FUNC0(start_clu));
	FUNC1(ep->start_clu_hi, FUNC0(start_clu >> 16));
	FUNC2(ep->size, 0);

	tp = FUNC5(&tm);
	FUNC3((struct dentry_t *)ep, tp, TM_CREATE);
	FUNC3((struct dentry_t *)ep, tp, TM_MODIFY);
	FUNC1(ep->access_date, 0);
	ep->create_time_ms = 0;
}