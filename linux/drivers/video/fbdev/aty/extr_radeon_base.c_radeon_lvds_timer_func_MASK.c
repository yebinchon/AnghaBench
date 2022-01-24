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
struct timer_list {int dummy; } ;
struct radeonfb_info {int /*<<< orphan*/  pending_lvds_gen_cntl; } ;

/* Variables and functions */
 int /*<<< orphan*/  LVDS_GEN_CNTL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct radeonfb_info* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lvds_timer ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct radeonfb_info* rinfo ; 

__attribute__((used)) static void FUNC3(struct timer_list *t)
{
	struct radeonfb_info *rinfo = FUNC1(rinfo, t, lvds_timer);

	FUNC2();

	FUNC0(LVDS_GEN_CNTL, rinfo->pending_lvds_gen_cntl);
}