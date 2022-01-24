#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct vbg_session {scalar_t__* hgcm_client_ids; int /*<<< orphan*/  requestor; } ;
struct TYPE_6__ {scalar_t__ rc; } ;
struct TYPE_4__ {scalar_t__ client_id; } ;
struct TYPE_5__ {TYPE_1__ in; } ;
struct vbg_ioctl_hgcm_disconnect {TYPE_3__ hdr; TYPE_2__ u; } ;
struct vbg_dev {int /*<<< orphan*/  session_mutex; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__*) ; 
 int EINVAL ; 
 scalar_t__ U32_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct vbg_dev*,int /*<<< orphan*/ ,scalar_t__,scalar_t__*) ; 
 scalar_t__ FUNC4 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct vbg_dev *gdev,
				     struct vbg_session *session,
				     struct vbg_ioctl_hgcm_disconnect *disconn)
{
	u32 client_id;
	int i, ret;

	if (FUNC4(&disconn->hdr, sizeof(disconn->u.in), 0))
		return -EINVAL;

	client_id = disconn->u.in.client_id;
	if (client_id == 0 || client_id == U32_MAX)
		return -EINVAL;

	FUNC1(&gdev->session_mutex);
	for (i = 0; i < FUNC0(session->hgcm_client_ids); i++) {
		if (session->hgcm_client_ids[i] == client_id) {
			session->hgcm_client_ids[i] = U32_MAX;
			break;
		}
	}
	FUNC2(&gdev->session_mutex);

	if (i >= FUNC0(session->hgcm_client_ids))
		return -EINVAL;

	ret = FUNC3(gdev, session->requestor, client_id,
				  &disconn->hdr.rc);

	FUNC1(&gdev->session_mutex);
	if (ret == 0 && disconn->hdr.rc >= 0)
		session->hgcm_client_ids[i] = 0;
	else
		session->hgcm_client_ids[i] = client_id;
	FUNC2(&gdev->session_mutex);

	return ret;
}