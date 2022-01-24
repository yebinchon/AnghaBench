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
 int DLM_ECANCEL ; 
 int /*<<< orphan*/  FUNC0 (struct dlm_rsb*,struct dlm_lkb*,int) ; 
 int FUNC1 (struct dlm_rsb*,struct dlm_lkb*) ; 

__attribute__((used)) static int FUNC2(struct dlm_rsb *r, struct dlm_lkb *lkb)
{
	int error;

	error = FUNC1(r, lkb);
	if (error) {
		FUNC0(r, lkb, -DLM_ECANCEL);
		return -DLM_ECANCEL;
	}
	return 0;
}