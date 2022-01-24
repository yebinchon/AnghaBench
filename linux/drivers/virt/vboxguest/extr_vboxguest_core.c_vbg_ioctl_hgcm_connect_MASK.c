#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  void* u32 ;
struct vbg_session {void** hgcm_client_ids; int /*<<< orphan*/  requestor; } ;
struct TYPE_6__ {void* client_id; } ;
struct TYPE_5__ {int /*<<< orphan*/  loc; } ;
struct TYPE_7__ {TYPE_2__ out; TYPE_1__ in; } ;
struct TYPE_8__ {scalar_t__ rc; } ;
struct vbg_ioctl_hgcm_connect {TYPE_3__ u; TYPE_4__ hdr; } ;
struct vbg_dev {int /*<<< orphan*/  session_mutex; } ;

/* Variables and functions */
 int FUNC0 (void**) ; 
 int EINVAL ; 
 int EMFILE ; 
 void* U32_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct vbg_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**,scalar_t__*) ; 
 scalar_t__ FUNC4 (TYPE_4__*,int,int) ; 

__attribute__((used)) static int FUNC5(struct vbg_dev *gdev,
				  struct vbg_session *session,
				  struct vbg_ioctl_hgcm_connect *conn)
{
	u32 client_id;
	int i, ret;

	if (FUNC4(&conn->hdr, sizeof(conn->u.in), sizeof(conn->u.out)))
		return -EINVAL;

	/* Find a free place in the sessions clients array and claim it */
	FUNC1(&gdev->session_mutex);
	for (i = 0; i < FUNC0(session->hgcm_client_ids); i++) {
		if (!session->hgcm_client_ids[i]) {
			session->hgcm_client_ids[i] = U32_MAX;
			break;
		}
	}
	FUNC2(&gdev->session_mutex);

	if (i >= FUNC0(session->hgcm_client_ids))
		return -EMFILE;

	ret = FUNC3(gdev, session->requestor, &conn->u.in.loc,
			       &client_id, &conn->hdr.rc);

	FUNC1(&gdev->session_mutex);
	if (ret == 0 && conn->hdr.rc >= 0) {
		conn->u.out.client_id = client_id;
		session->hgcm_client_ids[i] = client_id;
	} else {
		conn->u.out.client_id = 0;
		session->hgcm_client_ids[i] = 0;
	}
	FUNC2(&gdev->session_mutex);

	return ret;
}