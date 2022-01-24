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
struct dlm_rsb {int dummy; } ;
struct dlm_lkb {int /*<<< orphan*/  lkb_statequeue; scalar_t__ lkb_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_lkb*) ; 

__attribute__((used)) static void FUNC2(struct dlm_rsb *r, struct dlm_lkb *lkb)
{
	lkb->lkb_status = 0;
	FUNC0(&lkb->lkb_statequeue);
	FUNC1(lkb);
}