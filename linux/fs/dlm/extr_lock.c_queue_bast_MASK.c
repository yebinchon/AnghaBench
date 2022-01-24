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
struct dlm_lkb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DLM_CB_BAST ; 
 int /*<<< orphan*/  FUNC0 (struct dlm_lkb*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct dlm_lkb*) ; 
 int /*<<< orphan*/  FUNC2 (struct dlm_rsb*,struct dlm_lkb*,int) ; 

__attribute__((used)) static void FUNC3(struct dlm_rsb *r, struct dlm_lkb *lkb, int rqmode)
{
	if (FUNC1(lkb)) {
		FUNC2(r, lkb, rqmode);
	} else {
		FUNC0(lkb, DLM_CB_BAST, rqmode, 0, 0);
	}
}