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
struct vbg_session {int /*<<< orphan*/ * hgcm_client_ids; struct vbg_dev* gdev; } ;
struct vbg_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  U32_MAX ; 
 int /*<<< orphan*/  VBG_KERNEL_REQUEST ; 
 int /*<<< orphan*/  FUNC1 (struct vbg_session*) ; 
 int /*<<< orphan*/  FUNC2 (struct vbg_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct vbg_dev*,struct vbg_session*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct vbg_dev*,struct vbg_session*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC5(struct vbg_session *session)
{
	struct vbg_dev *gdev = session->gdev;
	int i, rc;

	FUNC3(gdev, session, 0, U32_MAX, true);
	FUNC4(gdev, session, 0, U32_MAX, true);

	for (i = 0; i < FUNC0(session->hgcm_client_ids); i++) {
		if (!session->hgcm_client_ids[i])
			continue;

		/* requestor is kernel here, as we're cleaning up. */
		FUNC2(gdev, VBG_KERNEL_REQUEST,
				    session->hgcm_client_ids[i], &rc);
	}

	FUNC1(session);
}