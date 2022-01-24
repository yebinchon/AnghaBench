#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int result; scalar_t__ flags; } ;
struct vmmdev_hgcm_disconnect {TYPE_1__ header; int /*<<< orphan*/  client_id; } ;
struct vbg_dev {int /*<<< orphan*/  hgcm_wq; } ;

/* Variables and functions */
 int ENOMEM ; 
 int VINF_HGCM_ASYNC_EXECUTE ; 
 int /*<<< orphan*/  VMMDEVREQ_HGCM_DISCONNECT ; 
 int /*<<< orphan*/  FUNC0 (struct vbg_dev*,TYPE_1__*) ; 
 struct vmmdev_hgcm_disconnect* FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vmmdev_hgcm_disconnect*,int) ; 
 int FUNC3 (struct vbg_dev*,struct vmmdev_hgcm_disconnect*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(struct vbg_dev *gdev, u32 requestor,
			u32 client_id, int *vbox_status)
{
	struct vmmdev_hgcm_disconnect *hgcm_disconnect = NULL;
	int rc;

	hgcm_disconnect = FUNC1(sizeof(*hgcm_disconnect),
					VMMDEVREQ_HGCM_DISCONNECT,
					requestor);
	if (!hgcm_disconnect)
		return -ENOMEM;

	hgcm_disconnect->header.flags = 0;
	hgcm_disconnect->client_id = client_id;

	rc = FUNC3(gdev, hgcm_disconnect);

	if (rc == VINF_HGCM_ASYNC_EXECUTE)
		FUNC4(gdev->hgcm_wq,
			   FUNC0(gdev, &hgcm_disconnect->header));

	if (rc >= 0)
		rc = hgcm_disconnect->header.result;

	FUNC2(hgcm_disconnect, sizeof(*hgcm_disconnect));

	*vbox_status = rc;
	return 0;
}