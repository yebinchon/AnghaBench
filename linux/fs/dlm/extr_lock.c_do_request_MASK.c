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
 int /*<<< orphan*/  DLM_LKSTS_WAITING ; 
 int EAGAIN ; 
 int EINPROGRESS ; 
 int /*<<< orphan*/  FUNC0 (struct dlm_rsb*,struct dlm_lkb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_lkb*) ; 
 scalar_t__ FUNC2 (struct dlm_rsb*,struct dlm_lkb*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct dlm_lkb*) ; 
 int /*<<< orphan*/  FUNC4 (struct dlm_rsb*,struct dlm_lkb*) ; 
 int /*<<< orphan*/  FUNC5 (struct dlm_rsb*,struct dlm_lkb*,int) ; 

__attribute__((used)) static int FUNC6(struct dlm_rsb *r, struct dlm_lkb *lkb)
{
	int error = 0;

	if (FUNC2(r, lkb, 1, 0, NULL)) {
		FUNC4(r, lkb);
		FUNC5(r, lkb, 0);
		goto out;
	}

	if (FUNC3(lkb)) {
		error = -EINPROGRESS;
		FUNC0(r, lkb, DLM_LKSTS_WAITING);
		FUNC1(lkb);
		goto out;
	}

	error = -EAGAIN;
	FUNC5(r, lkb, -EAGAIN);
 out:
	return error;
}