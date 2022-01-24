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
struct TYPE_2__ {int /*<<< orphan*/  type; } ;
struct ceph_msg {TYPE_1__ hdr; } ;
struct ceph_mds_session {struct ceph_mds_client* s_mdsc; } ;
struct ceph_mds_client {int /*<<< orphan*/  mutex; } ;
struct ceph_connection {struct ceph_mds_session* private; } ;

/* Variables and functions */
#define  CEPH_MSG_CLIENT_CAPS 136 
#define  CEPH_MSG_CLIENT_LEASE 135 
#define  CEPH_MSG_CLIENT_QUOTA 134 
#define  CEPH_MSG_CLIENT_REPLY 133 
#define  CEPH_MSG_CLIENT_REQUEST_FORWARD 132 
#define  CEPH_MSG_CLIENT_SESSION 131 
#define  CEPH_MSG_CLIENT_SNAP 130 
#define  CEPH_MSG_FS_MAP_USER 129 
#define  CEPH_MSG_MDS_MAP 128 
 scalar_t__ FUNC0 (struct ceph_mds_client*,struct ceph_mds_session*) ; 
 int /*<<< orphan*/  FUNC1 (struct ceph_mds_session*,struct ceph_msg*) ; 
 int /*<<< orphan*/  FUNC2 (struct ceph_mds_client*,struct ceph_mds_session*,struct ceph_msg*) ; 
 int /*<<< orphan*/  FUNC3 (struct ceph_mds_client*,struct ceph_mds_session*,struct ceph_msg*) ; 
 int /*<<< orphan*/  FUNC4 (struct ceph_mds_client*,struct ceph_msg*) ; 
 int /*<<< orphan*/  FUNC5 (struct ceph_mds_client*,struct ceph_msg*) ; 
 int /*<<< orphan*/  FUNC6 (struct ceph_msg*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct ceph_mds_client*,struct ceph_mds_session*,struct ceph_msg*) ; 
 int /*<<< orphan*/  FUNC9 (struct ceph_mds_client*,struct ceph_mds_session*,struct ceph_msg*) ; 
 int /*<<< orphan*/  FUNC10 (struct ceph_mds_session*,struct ceph_msg*) ; 
 int /*<<< orphan*/  FUNC11 (struct ceph_mds_session*,struct ceph_msg*) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC16(struct ceph_connection *con, struct ceph_msg *msg)
{
	struct ceph_mds_session *s = con->private;
	struct ceph_mds_client *mdsc = s->s_mdsc;
	int type = FUNC12(msg->hdr.type);

	FUNC13(&mdsc->mutex);
	if (FUNC0(mdsc, s) < 0) {
		FUNC14(&mdsc->mutex);
		goto out;
	}
	FUNC14(&mdsc->mutex);

	switch (type) {
	case CEPH_MSG_MDS_MAP:
		FUNC5(mdsc, msg);
		break;
	case CEPH_MSG_FS_MAP_USER:
		FUNC4(mdsc, msg);
		break;
	case CEPH_MSG_CLIENT_SESSION:
		FUNC11(s, msg);
		break;
	case CEPH_MSG_CLIENT_REPLY:
		FUNC10(s, msg);
		break;
	case CEPH_MSG_CLIENT_REQUEST_FORWARD:
		FUNC8(mdsc, s, msg);
		break;
	case CEPH_MSG_CLIENT_CAPS:
		FUNC1(s, msg);
		break;
	case CEPH_MSG_CLIENT_SNAP:
		FUNC3(mdsc, s, msg);
		break;
	case CEPH_MSG_CLIENT_LEASE:
		FUNC9(mdsc, s, msg);
		break;
	case CEPH_MSG_CLIENT_QUOTA:
		FUNC2(mdsc, s, msg);
		break;

	default:
		FUNC15("received unknown message type %d %s\n", type,
		       FUNC7(type));
	}
out:
	FUNC6(msg);
}