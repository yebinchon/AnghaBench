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
typedef  int /*<<< orphan*/  u8 ;
struct bm_rcr {int /*<<< orphan*/  ithresh; } ;
struct bm_portal {struct bm_rcr rcr; } ;

/* Variables and functions */
 int /*<<< orphan*/  BM_REG_RCR_ITR ; 
 int /*<<< orphan*/  FUNC0 (struct bm_portal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct bm_portal *portal, u8 ithresh)
{
	struct bm_rcr *rcr = &portal->rcr;

	rcr->ithresh = ithresh;
	FUNC0(portal, BM_REG_RCR_ITR, ithresh);
}