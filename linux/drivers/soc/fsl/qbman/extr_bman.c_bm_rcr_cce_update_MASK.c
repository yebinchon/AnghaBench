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
typedef  int u8 ;
struct bm_rcr {int ci; scalar_t__ cmode; int /*<<< orphan*/  available; } ;
struct bm_portal {struct bm_rcr rcr; } ;

/* Variables and functions */
 int /*<<< orphan*/  BM_CL_RCR_CI_CENA ; 
 int BM_RCR_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct bm_portal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bm_portal*,int /*<<< orphan*/ ) ; 
 scalar_t__ bm_rcr_cce ; 
 int FUNC3 (int,int,int) ; 

__attribute__((used)) static u8 FUNC4(struct bm_portal *portal)
{
	struct bm_rcr *rcr = &portal->rcr;
	u8 diff, old_ci = rcr->ci;

	FUNC0(rcr->cmode == bm_rcr_cce);
	rcr->ci = FUNC1(portal, BM_CL_RCR_CI_CENA) & (BM_RCR_SIZE - 1);
	FUNC2(portal, BM_CL_RCR_CI_CENA);
	diff = FUNC3(BM_RCR_SIZE, old_ci, rcr->ci);
	rcr->available += diff;
	return diff;
}