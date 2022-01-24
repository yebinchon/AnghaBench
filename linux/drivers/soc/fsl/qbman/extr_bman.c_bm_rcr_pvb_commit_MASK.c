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
struct bm_rcr_entry {int _ncw_verb; } ;
struct bm_rcr {int busy; scalar_t__ pmode; int available; int vbit; struct bm_rcr_entry* cursor; } ;
struct bm_portal {struct bm_rcr rcr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ bm_rcr_pvb ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct bm_rcr_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct bm_rcr*) ; 

__attribute__((used)) static inline void FUNC4(struct bm_portal *portal, u8 myverb)
{
	struct bm_rcr *rcr = &portal->rcr;
	struct bm_rcr_entry *rcursor;

	FUNC0(rcr->busy);
	FUNC0(rcr->pmode == bm_rcr_pvb);
	FUNC0(rcr->available >= 1);
	FUNC1();
	rcursor = rcr->cursor;
	rcursor->_ncw_verb = myverb | rcr->vbit;
	FUNC2(rcursor);
	FUNC3(rcr);
	rcr->available--;
#ifdef CONFIG_FSL_DPAA_CHECKING
	rcr->busy = 0;
#endif
}