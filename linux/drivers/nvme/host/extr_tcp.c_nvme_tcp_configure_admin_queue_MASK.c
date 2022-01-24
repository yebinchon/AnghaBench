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
struct nvme_ctrl {void* admin_tagset; void* fabrics_q; void* admin_q; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 void* FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int FUNC6 (struct nvme_ctrl*) ; 
 int FUNC7 (struct nvme_ctrl*) ; 
 int FUNC8 (struct nvme_ctrl*) ; 
 void* FUNC9 (struct nvme_ctrl*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct nvme_ctrl*) ; 
 int FUNC11 (struct nvme_ctrl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct nvme_ctrl*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct nvme_ctrl *ctrl, bool new)
{
	int error;

	error = FUNC8(ctrl);
	if (error)
		return error;

	if (new) {
		ctrl->admin_tagset = FUNC9(ctrl, true);
		if (FUNC0(ctrl->admin_tagset)) {
			error = FUNC1(ctrl->admin_tagset);
			goto out_free_queue;
		}

		ctrl->fabrics_q = FUNC4(ctrl->admin_tagset);
		if (FUNC0(ctrl->fabrics_q)) {
			error = FUNC1(ctrl->fabrics_q);
			goto out_free_tagset;
		}

		ctrl->admin_q = FUNC4(ctrl->admin_tagset);
		if (FUNC0(ctrl->admin_q)) {
			error = FUNC1(ctrl->admin_q);
			goto out_cleanup_fabrics_q;
		}
	}

	error = FUNC11(ctrl, 0);
	if (error)
		goto out_cleanup_queue;

	error = FUNC6(ctrl);
	if (error)
		goto out_stop_queue;

	FUNC5(ctrl->admin_q);

	error = FUNC7(ctrl);
	if (error)
		goto out_stop_queue;

	return 0;

out_stop_queue:
	FUNC12(ctrl, 0);
out_cleanup_queue:
	if (new)
		FUNC2(ctrl->admin_q);
out_cleanup_fabrics_q:
	if (new)
		FUNC2(ctrl->fabrics_q);
out_free_tagset:
	if (new)
		FUNC3(ctrl->admin_tagset);
out_free_queue:
	FUNC10(ctrl);
	return error;
}