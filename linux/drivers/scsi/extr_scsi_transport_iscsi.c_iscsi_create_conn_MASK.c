#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct iscsi_transport {int dummy; } ;
struct iscsi_cls_session {int /*<<< orphan*/  dev; int /*<<< orphan*/  sid; struct iscsi_transport* transport; } ;
struct TYPE_4__ {int /*<<< orphan*/  release; int /*<<< orphan*/ * parent; } ;
struct iscsi_cls_conn {int /*<<< orphan*/  conn_list; TYPE_1__ dev; int /*<<< orphan*/  cid; struct iscsi_transport* transport; int /*<<< orphan*/  ep_mutex; struct iscsi_cls_conn* dd_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct iscsi_cls_conn*,char*) ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  connlist ; 
 int /*<<< orphan*/  connlock ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct iscsi_cls_session*,char*) ; 
 int /*<<< orphan*/  iscsi_conn_release ; 
 int /*<<< orphan*/  FUNC6 (struct iscsi_cls_conn*) ; 
 struct iscsi_cls_conn* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 

struct iscsi_cls_conn *
FUNC14(struct iscsi_cls_session *session, int dd_size, uint32_t cid)
{
	struct iscsi_transport *transport = session->transport;
	struct iscsi_cls_conn *conn;
	unsigned long flags;
	int err;

	conn = FUNC7(sizeof(*conn) + dd_size, GFP_KERNEL);
	if (!conn)
		return NULL;
	if (dd_size)
		conn->dd_data = &conn[1];

	FUNC9(&conn->ep_mutex);
	FUNC0(&conn->conn_list);
	conn->transport = transport;
	conn->cid = cid;

	/* this is released in the dev's release function */
	if (!FUNC4(&session->dev))
		goto free_conn;

	FUNC2(&conn->dev, "connection%d:%u", session->sid, cid);
	conn->dev.parent = &session->dev;
	conn->dev.release = iscsi_conn_release;
	err = FUNC3(&conn->dev);
	if (err) {
		FUNC5(KERN_ERR, session, "could not "
					 "register connection's dev\n");
		goto release_parent_ref;
	}
	FUNC13(&conn->dev);

	FUNC11(&connlock, flags);
	FUNC8(&conn->conn_list, &connlist);
	FUNC12(&connlock, flags);

	FUNC1(conn, "Completed conn creation\n");
	return conn;

release_parent_ref:
	FUNC10(&session->dev);
free_conn:
	FUNC6(conn);
	return NULL;
}