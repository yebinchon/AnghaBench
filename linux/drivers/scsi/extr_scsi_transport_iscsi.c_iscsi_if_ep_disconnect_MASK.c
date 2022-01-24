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
typedef  int /*<<< orphan*/  u64 ;
struct iscsi_transport {int /*<<< orphan*/  (* ep_disconnect ) (struct iscsi_endpoint*) ;} ;
struct iscsi_endpoint {struct iscsi_cls_conn* conn; } ;
struct iscsi_cls_conn {int /*<<< orphan*/  ep_mutex; int /*<<< orphan*/ * ep; } ;

/* Variables and functions */
 int EINVAL ; 
 struct iscsi_endpoint* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct iscsi_endpoint*) ; 

__attribute__((used)) static int FUNC4(struct iscsi_transport *transport,
				  u64 ep_handle)
{
	struct iscsi_cls_conn *conn;
	struct iscsi_endpoint *ep;

	if (!transport->ep_disconnect)
		return -EINVAL;

	ep = FUNC0(ep_handle);
	if (!ep)
		return -EINVAL;
	conn = ep->conn;
	if (conn) {
		FUNC1(&conn->ep_mutex);
		conn->ep = NULL;
		FUNC2(&conn->ep_mutex);
	}

	transport->ep_disconnect(ep);
	return 0;
}