#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  union bm_mc_result {int dummy; } bm_mc_result ;
typedef  int u8 ;
struct bm_mc {int rridx; scalar_t__ state; int vbit; TYPE_1__* cr; union bm_mc_result* rr; } ;
struct bm_portal {struct bm_mc mc; } ;
struct TYPE_2__ {int _ncw_verb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (union bm_mc_result*) ; 
 scalar_t__ mc_hw ; 
 scalar_t__ mc_user ; 

__attribute__((used)) static inline void FUNC4(struct bm_portal *portal, u8 myverb)
{
	struct bm_mc *mc = &portal->mc;
	union bm_mc_result *rr = mc->rr + mc->rridx;

	FUNC0(mc->state == mc_user);
	FUNC1();
	mc->cr->_ncw_verb = myverb | mc->vbit;
	FUNC2(mc->cr);
	FUNC3(rr);
#ifdef CONFIG_FSL_DPAA_CHECKING
	mc->state = mc_hw;
#endif
}