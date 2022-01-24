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
struct ceph_auth_handshake {int /*<<< orphan*/ * authorizer; } ;
struct ceph_mds_session {struct ceph_auth_handshake s_auth; struct ceph_mds_client* s_mdsc; } ;
struct ceph_mds_client {TYPE_3__* fsc; } ;
struct ceph_connection {struct ceph_mds_session* private; } ;
struct ceph_auth_client {int protocol; } ;
struct TYPE_6__ {TYPE_2__* client; } ;
struct TYPE_4__ {struct ceph_auth_client* auth; } ;
struct TYPE_5__ {TYPE_1__ monc; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEPH_ENTITY_TYPE_MDS ; 
 struct ceph_auth_handshake* FUNC0 (int) ; 
 int FUNC1 (struct ceph_auth_client*,int /*<<< orphan*/ ,struct ceph_auth_handshake*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct ceph_auth_client*,int /*<<< orphan*/ ,struct ceph_auth_handshake*) ; 

__attribute__((used)) static struct ceph_auth_handshake *FUNC4(struct ceph_connection *con,
					int *proto, int force_new)
{
	struct ceph_mds_session *s = con->private;
	struct ceph_mds_client *mdsc = s->s_mdsc;
	struct ceph_auth_client *ac = mdsc->fsc->client->monc.auth;
	struct ceph_auth_handshake *auth = &s->s_auth;

	if (force_new && auth->authorizer) {
		FUNC2(auth->authorizer);
		auth->authorizer = NULL;
	}
	if (!auth->authorizer) {
		int ret = FUNC1(ac, CEPH_ENTITY_TYPE_MDS,
						      auth);
		if (ret)
			return FUNC0(ret);
	} else {
		int ret = FUNC3(ac, CEPH_ENTITY_TYPE_MDS,
						      auth);
		if (ret)
			return FUNC0(ret);
	}
	*proto = ac->protocol;

	return auth;
}