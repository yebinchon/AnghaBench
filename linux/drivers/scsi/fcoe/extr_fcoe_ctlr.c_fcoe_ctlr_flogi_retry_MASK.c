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
struct fcoe_fcf {scalar_t__ flogi_sent; } ;
struct fcoe_ctlr {int /*<<< orphan*/  ctlr_mutex; int /*<<< orphan*/  ctlr_lock; int /*<<< orphan*/ * flogi_req; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct fcoe_ctlr*,char*) ; 
 int FUNC1 (struct fcoe_ctlr*) ; 
 struct fcoe_fcf* FUNC2 (struct fcoe_ctlr*) ; 
 int /*<<< orphan*/  FUNC3 (struct fcoe_ctlr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct fcoe_ctlr *fip)
{
	struct fcoe_fcf *fcf;
	int error;

	FUNC5(&fip->ctlr_mutex);
	FUNC7(&fip->ctlr_lock);
	FUNC0(fip, "re-sending FLOGI - reselect\n");
	fcf = FUNC2(fip);
	if (!fcf || fcf->flogi_sent) {
		FUNC4(fip->flogi_req);
		fip->flogi_req = NULL;
		error = -ENOENT;
	} else {
		FUNC3(fip, NULL);
		error = FUNC1(fip);
	}
	FUNC8(&fip->ctlr_lock);
	FUNC6(&fip->ctlr_mutex);
	return error;
}